local Mag = DBM:NewBossMod("Magtheridon", DBM_MAG_NAME, DBM_MAG_DESCRIPTION, DBM_MAGS_LAIR, DBMGUI_TAB_OTHER_BC, 3);

Mag.Version		= "1.3";
Mag.Author		= "FigureEightLV"; -- Originally by Tandanu

Mag:RegisterCombat("EMOTE", DBM_MAG_EMOTE_PULL);

Mag:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"CHAT_MSG_MONSTER_YELL",
	"CHAT_MSG_RAID_BOSS_EMOTE"
)

Mag:AddOption("WarnInfernal", true, DBM_MAG_OPTION_1);
Mag:AddOption("WarnHeal", true, DBM_MAG_OPTION_2);
Mag:AddOption("WarnNova", true, DBM_MAG_OPTION_3);

Mag:AddBarOption("Phase 2")
Mag:AddBarOption("Heal")
Mag:AddBarOption("Blast Nova")
Mag:AddBarOption("Quake%d", true, DBM_MAG_OPTION_4)
Mag:AddBarOption("Enrage", false)

function Mag:OnCombatStart(delay)
	self:SendSync("Combat")
	self:ScheduleMethod(120, "SendSync", "Phase2")
	self:ScheduleMethod(120, "SendSync", "Firstnova");
	self:ScheduleMethod(120, "SendSync", "Quake1");
	self:ScheduleMethod(120, "SendSync", "Enrage");
end

function Mag:OnEvent(event, arg1)
	if event == "SPELL_CAST_SUCCESS" then
		if arg1.spellId == 30511 and self.Options.WarnInfernal then
			self:Announce(DBM_MAG_WARN_INFERNAL, 2);
		end
	elseif event == "SPELL_CAST_START" then
		if arg1.spellId == 30528 then
			if self.Options.WarnHeal then
				self:Announce(DBM_MAG_WARN_HEAL, 1);
			end
			self:StartStatusBarTimer(2, "Heal", "Interface\\Icons\\Spell_Shadow_ChillTouch");
		end
	elseif event == "CHAT_MSG_MONSTER_YELL" then
		if arg1 and string.find(arg1, DBM_MAG_YELL_PHASE2) then -- to support stupid german localization :(
			self:Announce(DBM_MAG_WARN_P2, 3);
			self:StartStatusBarTimer(54, "Blast Nova", "Interface\\Icons\\Spell_Fire_SealOfFire");
			self:ScheduleSelf(48, "NovaWarn");
		end
	elseif event == "CHAT_MSG_RAID_BOSS_EMOTE" then
		if arg1 == DBM_MAG_EMOTE_NOVA then
			if self.Options.WarnNova then
				self:Announce(DBM_MAG_WARN_NOVA_NOW, 3)
			end
			self:StartStatusBarTimer(60, "Blast Nova", "Interface\\Icons\\Spell_Fire_SealOfFire");
			self:ScheduleSelf(54, "NovaWarn");
		end
	elseif event == "Phase2Warn" and arg1 then
		self:Announce(string.format(DBM_MAG_PHASE2_WARN, arg1), 2);
	elseif event == "NovaWarn" and self.Options.WarnNova then
		self:Announce(DBM_MAG_WARN_NOVA_SOON, 2);
	end
end

function Mag:OnSync(msg)
	if msg == "Combat" then
		self:StartStatusBarTimer(120, "Phase 2", "Interface\\Icons\\INV_Weapon_Halberd16");
		self:ScheduleSelf(60, "Phase2Warn", 60);
		self:ScheduleSelf(90, "Phase2Warn", 30);
		self:ScheduleSelf(110, "Phase2Warn", 10);
	elseif msg == "Firstnova" then
		self:StartStatusBarTimer(55, "Blast Nova", "Interface\\Icons\\Spell_Fire_SealOfFire");
	elseif msg:sub(1,5) == "Quake" then -- Quake timers can become off when Blast Nova occurs at the same time
		local count = tonumber(msg:sub(6,7))
		local timer = count > 1 and 50 or 38
		self:StartStatusBarTimer(timer, "Quake"..count, "Interface\\Icons\\Spell_Nature_Earthquake");
		self:ScheduleMethod(timer, "SendSync", "Quake"..(count + 1));
	elseif msg == "Enrage" then
		self:StartStatusBarTimer(1200, "Enrage", "Interface\\Icons\\Spell_Shadow_UnholyFrenzy")
		self:ScheduleAnnounce(600, DBM_GENERIC_ENRAGE_WARN:format(10, DBM_MIN), 1)
		self:ScheduleAnnounce(900, DBM_GENERIC_ENRAGE_WARN:format(5, DBM_MIN), 1)
		self:ScheduleAnnounce(1020, DBM_GENERIC_ENRAGE_WARN:format(3, DBM_MIN), 1)
		self:ScheduleAnnounce(1140, DBM_GENERIC_ENRAGE_WARN:format(1, DBM_MIN), 2)
		self:ScheduleAnnounce(1170, DBM_GENERIC_ENRAGE_WARN:format(30, DBM_SEC), 3)
		self:ScheduleAnnounce(1190, DBM_GENERIC_ENRAGE_WARN:format(10, DBM_SEC), 4)
	end
end

function Mag:OnCombatEnd()
	self:EndStatusBarTimer("Quake");
end