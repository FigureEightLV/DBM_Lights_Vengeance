local Netherspite = DBM:NewBossMod("Netherspite", DBM_NS_NAME, DBM_NS_DESCRIPTION, DBM_KARAZHAN, DBM_KARAZHAN_TAB, 11);

Netherspite.Version			= "1.4";
Netherspite.Author			= "FigureEightLV"; -- Originally by Tandanu
Netherspite.Phase			= 1;


Netherspite:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"CHAT_MSG_RAID_BOSS_EMOTE",
	"SPELL_DAMAGE"
);

Netherspite:RegisterCombat("COMBAT");

Netherspite:AddOption("PhaseWarn", true, DBM_NS_OPTION_1);
Netherspite:AddOption("PhasePreWarn", true, DBM_NS_OPTION_2);
Netherspite:AddOption("VoidWarn", true, DBM_NS_OPTION_3);
Netherspite:AddOption("BreathWarn", true, DBM_NS_OPTION_4);

Netherspite:AddBarOption("Enrage")
Netherspite:AddBarOption("Banish Phase")
Netherspite:AddBarOption("Portal Phase")
Netherspite:AddBarOption("Netherbreath")

function Netherspite:OnCombatStart(delay)
	self.Phase = 1;
	self:StartStatusBarTimer(60 - delay, "Portal Phase", "Interface\\Icons\\Spell_Arcane_PortalIronForge");
	self:ScheduleSelf(55 - delay, "PhaseWarning", 2);
	
	self:StartStatusBarTimer(540 - delay, "Enrage", "Interface\\Icons\\Spell_Shadow_UnholyFrenzy");
	self:ScheduleSelf(240 - delay, "EnrageWarn", 300);
	self:ScheduleSelf(420 - delay, "EnrageWarn", 120);
	self:ScheduleSelf(480 - delay, "EnrageWarn", 60);
	self:ScheduleSelf(510 - delay, "EnrageWarn", 30);
	self:ScheduleSelf(530 - delay, "EnrageWarn", 10);
end

function Netherspite:OnCombatEnd()
	self.Phase = 1;
end

function Netherspite:OnEvent(event, arg1)
	if event == "SPELL_CAST_START" then
		if arg1.spellId == 38523 then
			if arg1.spellId == 38523 then
				self:SendSync("Netherbreath");
			end
		end
	elseif event == "SPELL_CAST_SUCCESS" then
		if arg1.spellId == 37014 or arg1.spellId == 37063 then
			if self.Options.VoidWarn then
				self:Announce(DBM_NS_WARN_VOID_ZONE, 1);
			end
		end
	elseif event == "SPELL_DAMAGE" then
		if arg1.spellId == 28865 and arg1.destName == UnitName("player") then
			self.AddSpecialWarning(DBM_NS_VOID_SPECWARN);
		end	
	elseif event == "CHAT_MSG_RAID_BOSS_EMOTE" then
		if arg1 == DBM_NS_EMOTE_PHASE_2 then
			self.Phase = 2;
			self:EndStatusBarTimer("Portal Phase");
			self:StartStatusBarTimer(31, "Banish Phase", "Interface\\Icons\\Spell_Shadow_Cripple");
			self:ScheduleSelf(26, "PhaseWarning", 1);
			
			if self.Options.PhaseWarn then
				self:Announce(DBM_NS_WARN_BANISH, 3);
			end
		elseif arg1 == DBM_NS_EMOTE_PHASE_1 then
			self.Phase = 1;
			self:EndStatusBarTimer("Banish Phase");
			self:StartStatusBarTimer(60, "Portal Phase", "Interface\\Icons\\Spell_Arcane_PortalIronForge");
			self:ScheduleSelf(55, "PhaseWarning", 2);
			
			if self.Options.PhaseWarn then
				self:Announce(DBM_NS_WARN_PORTAL, 3);
			end
		end
	elseif event == "PhaseWarning" and arg1 and self.Options.PhasePreWarn then
		if arg1 == 1 then
			self:Announce(DBM_NS_WARN_PORTAL_SOON, 2);
		elseif arg1 == 2 then
			self:Announce(DBM_NS_WARN_BANISH_SOON, 2);
		end
	elseif event == "EnrageWarn" and type(arg1) == "number" then
		if arg1 >= 60 then
			self:Announce(string.format(DBM_NS_WARN_ENRAGE, (arg1/60), DBM_MIN), 1)
		else
			self:Announce(string.format(DBM_NS_WARN_ENRAGE, arg1, DBM_SEC), 3)
		end
	end
end

function Netherspite:OnSync(msg)
	if msg == "Netherbreath" then
		local target
		for i = 1, GetNumRaidMembers() do
			if UnitName("raid"..i.."target") == DBM_NS_NAME then
				target = UnitName("raid"..i.."targettarget");
			end
		end
		if target then
			if target == UnitName("player") then
				self:AddSpecialWarning(DBM_NS_BREATH_SPECWARN);
			end
			if self.Options.BreathWarn then
				self:Announce(string.format(DBM_NS_WARN_BREATH, target), 2);
			end	
			if self.Options.ThalaIcon then
				self:SetIcon(target, 5);
			end
			self:StartStatusBarTimer(2.5, "Netherbreath", "Interface\\Icons\\Spell_Arcane_MassDispel");
		end	
	end
end