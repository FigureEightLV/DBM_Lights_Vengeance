local Alar = DBM:NewBossMod("Alar", DBM_ALAR_NAME, DBM_ALAR_DESCRIPTION, DBM_TEMPEST_KEEP, DBM_EYE_TAB, 1);

Alar.Version	= "1.2";
Alar.Author		= "FigureEightLV"; -- Originally by Tandanu

local warnPhase = false;
local phase2	= false;
local lastAdd	= 0;
local flying	= false;
local langError	= false;
local lastMeteor= 0;

Alar:RegisterEvents(
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REFRESH"
);

Alar:RegisterCombat("COMBAT");

Alar:AddOption("WarnArmor", true, DBM_ALAR_OPTION_MELTARMOR);
Alar:AddOption("Meteor", true, DBM_ALAR_OPTION_METEOR);

Alar:AddBarOption("Enrage")
Alar:AddBarOption("Meteor")
Alar:AddBarOption("Flame Quills")
Alar:AddBarOption("Melt Armor: (.*)")

function Alar:OnCombatStart(delay)	
	warnPhase = false;
	phase2	= false;
	lastAdd	= 0;
	flying = false;
	langError = false;
	self:StartStatusBarTimer(30 - delay, "Next Platform", "Interface\\AddOns\\DBM_API\\Textures\\CryptFiendUnBurrow");
	self:ScheduleSelf(10, "CheckForAlar"); -- to prevent bugs if you are using an unsupported client language...
end

function Alar:OnEvent(event, arg1)
	if event == "CheckForAlar" then
		for i = 1, GetNumRaidMembers() do
			if UnitName("raid"..i.."target") == DBM_ALAR_NAME and UnitAffectingCombat("raid"..i.."target") then
				warnPhase = true;
				break;
			end
		end
		if not warnPhase then
			langError = true;
		end
	elseif event == "SPELL_CAST_SUCCESS" then
		if arg1.spellId == 35181 then
			self:SendSync("DiveBomb");
		elseif arg1.spellId == 34229 then
			self:SendSync("FlameQuills");
		end
	elseif event == "SPELL_AURA_APPLIED" or event == "SPELL_AURA_REFRESH" then
		if arg1.spellId == 35383 and arg1.destName == UnitName("player") then
			self:AddSpecialWarning(DBM_ALAR_WARN_FIRE);
		elseif arg1.spellId == 35410 then
			self:SendSync("MeltArmor"..tostring(arg1.destName));
		end
	elseif event == "MeteorSoon" then
		if self.Options.Meteor then
			self:Announce(DBM_ALAR_WARN_METEOR_SOON, 1);
		end
		
	elseif event == "EnrageWarn" and type(arg1) == "number" then
		if arg1 >= 60 then
			self:Announce(string.format(DBM_ALAR_WARN_ENRAGE, (arg1/60), DBM_MIN), 1);
		else
			self:Announce(string.format(DBM_ALAR_WARN_ENRAGE, arg1, DBM_SEC), 3);
		end
	end
end

function Alar:OnSync(msg)
	if msg == "Rebirth" and not self:IsWipe() and self.InCombat then
		self:Announce(DBM_ALAR_WARN_REBIRTH, 2);
		warnPhase = false;
		phase2 = GetTime();
		self:EndStatusBarTimer("Next Platform");
		self:UnScheduleSelf("NextPlatform");
		self:ScheduleSelf(30, "MeteorSoon");
		self:StartStatusBarTimer(35, "Meteor", "Interface\\Icons\\Spell_Fire_Fireball02");
		self:StartStatusBarTimer(600, "Enrage", "Interface\\Icons\\Spell_Shadow_UnholyFrenzy");
		self:ScheduleSelf(300, "EnrageWarn", 300);
		self:ScheduleSelf(480, "EnrageWarn", 120);
		self:ScheduleSelf(540, "EnrageWarn", 60);
		self:ScheduleSelf(570, "EnrageWarn", 30);
		self:ScheduleSelf(590, "EnrageWarn", 10);
	elseif msg == "DiveBomb" then
		if self.Options.Meteor then
			self:Announce(DBM_ALAR_WARN_METEOR, 3);
		end
		self:ScheduleSelf(30, "MeteorSoon");
		self:StartStatusBarTimer(35, "Meteor", "Interface\\Icons\\Spell_Fire_Fireball02");
	elseif msg == "FlameQuills" then
		self:StartStatusBarTimer(10, "Flame Quills", "Interface\\Icons\\Spell_Fire_Flare");
	elseif string.sub(msg, 0, 9) == "MeltArmor" then
		local target = string.sub(msg, 10);
		if target then
			if self:GetStatusBarTimerTimeLeft("Melt Armor: "..target) then
				self:UpdateStatusBarTimer("Melt Armor: "..target, 0, 60);
			else
				self:StartStatusBarTimer(60, "Melt Armor: "..target, "Interface\\Icons\\Spell_Fire_Immolation");
			end
			if self.Options.WarnArmor then
				self:Announce(DBM_ALAR_WARN_MELTARMOR:format(target), 1);
			end
		end
	elseif msg == "AddInc" and (GetTime() - lastAdd) > 15 and self.InCombat then
		lastAdd = GetTime();
		flying = true;
		self:EndStatusBarTimer("Next Platform");
		self:Announce(DBM_ALAR_WARN_ADD, 2);
	elseif msg == "Meteor" and (GetTime() - lastMeteor) > 30 and self.InCombat then
		lastMeteor = GetTime();
		if self.Options.Meteor then
			self:Announce(DBM_ALAR_WARN_METEOR, 3);
		end
		self:ScheduleSelf(45, "MeteorSoon");
		self:StartStatusBarTimer(50, "Meteor", "Interface\\Icons\\Spell_Fire_Fireball02");
	elseif msg == "NextPlatform" and self.InCombat then
		flying = false;
		self:StartStatusBarTimer(28, "Next Platform", "Interface\\AddOns\\DBM_API\\Textures\\CryptFiendUnBurrow");
	end
end

function Alar:OnUpdate(elapsed)
	if self.InCombat and not langError and not self:IsWipe() then
		local foundIt;
		local target;
		for i = 1, GetNumRaidMembers() do
			if UnitName("raid"..i.."target") == DBM_ALAR_NAME then
				foundIt = true;
				target = UnitName("raid"..i.."targettarget");
				if not target and UnitCastingInfo("raid"..i.."target") == DBM_ALAR_FLAME_BUFFET then
					target = "Dummy";
				end
				break;
			end
		end

		if not foundIt and not phase2 then
			foundIt = UnitExists("focus") and UnitName("focus") == DBM_ALAR_NAME -- fallback
		end

		if not foundIt and warnPhase then
			self:SendSync("Rebirth");
		end
		
		if foundIt and not target and not phase2 then
			self:SendSync("AddInc");
		elseif not target and type(phase2) == "number" and (GetTime() - phase2) > 25 then
			self:SendSync("Meteor");
		elseif target and flying then
			self:SendSync("NextPlatform");
		end
	end
end
