local Fathomlord = DBM:NewBossMod("Fathomlord", DBM_FATHOMLORD_NAME, DBM_FATHOMLORD_DESCRIPTION, DBM_COILFANG, DBM_SERPENT_TAB, 4);

Fathomlord.Version		= "1.2";
Fathomlord.Author		= "FigureEightLV"; -- Originally by Tandanu

Fathomlord:RegisterCombat("YELL", DBM_FATHOMLORD_YELL_PULL);

Fathomlord:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED"
);

Fathomlord:AddOption("TidalTotem", true, DBM_FATHOMLORD_OPTION_TOTEM_1);
Fathomlord:AddOption("KaraTotem", true, DBM_FATHOMLORD_OPTION_TOTEM_2);
Fathomlord:AddOption("Heal", true, DBM_FATHOMLORD_OPTION_HEAL);
Fathomlord:AddOption("SoundWarning", true, DBM_FATHOMLORD_OPTION_SOUND);

Fathomlord:AddBarOption("Enrage")
Fathomlord:AddBarOption("Healing Wave")

function Fathomlord:OnCombatStart(delay)
	self:StartStatusBarTimer(600 - delay, "Enrage", "Interface\\Icons\\Spell_Shadow_UnholyFrenzy");
	self:StartStatusBarTimer(15 - delay, "Tidal Surge", "Interface\\Icons\\Spell_Frost_Summonwaterelemental");
	self:StartStatusBarTimer(55 - delay, "Next Healing Wave", "Interface\\Icons\\Spell_Nature_MagicImmunity");
end

function Fathomlord:OnEvent(event, arg1)
	if event == "SPELL_CAST_SUCCESS" then
		if arg1.spellId == 38236 and arg1.sourceName == DBM_FATHOMLORD_NAME then
			self:SendSync("KaraTotem")
		elseif arg1.spellId == 38236 then
			self:SendSync("TidalTotem")
		elseif arg1.spellId == 38358 then
			self:StartStatusBarTimer(15, "Tidal Surge", "Interface\\Icons\\Spell_Frost_Summonwaterelemental");
		end
	elseif event == "SPELL_AURA_APPLIED" then
		if arg1.spellId == 38452 then
			self:StartStatusBarTimer(20, "Spitfire Totem", "Interface\\Icons\\Spell_Fire_Searingtotem");
			self:SendSync("SpitfireAttack");
		end
	elseif event == "SPELL_CAST_START" then
		if arg1.spellId == 38330 then
			self:SendSync("Heal");
		end
	end
end

function Fathomlord:OnSync(msg)
	if msg == "TidalTotem" then
		if self.Options.TidalTotem then
			self:Announce(DBM_FATHOMLORD_SFTOTEM1_WARN, 4);
		end
		if self.Options.SoundWarning then 
			PlaySoundFile("Sound\\Spells\\PVPFlagTaken.wav"); 
		end
	elseif msg == "KaraTotem" then
		if self.Options.KaraTotem then
			self:Announce(DBM_FATHOMLORD_SFTOTEM2_WARN, 4);
		end
		if self.Options.SoundWarning then 
			PlaySoundFile("Sound\\Spells\\PVPFlagTaken.wav"); 
		end
	elseif msg == "SpitfireAttack" then
		self:ScheduleMethod(27, "SendSync", "SpitfireAttack2");
	elseif msg == "SpitfireAttack2" then
		self:StartStatusBarTimer(20, "Spitfire Totem", "Interface\\Icons\\Spell_Fire_Searingtotem");	
		self:ScheduleMethod(27, "SendSync", "SpitfireAttack2");	
	elseif msg == "Heal" then
		if self.Options.Heal then
			self:Announce(DBM_FATHOMLORD_HEAL_WARN);
		end
		self:StartStatusBarTimer(0.9, "Healing Wave", "Interface\\Icons\\Spell_Nature_MagicImmunity");
		self:StartStatusBarTimer(60, "Next Healing Wave", "Interface\\Icons\\Spell_Nature_MagicImmunity");
	end
end