local Moroes = DBM:NewBossMod("Moroes", DBM_MOROES_NAME, DBM_MOROES_DESCRIPTION, DBM_KARAZHAN, DBM_KARAZHAN_TAB, 2);

Moroes.Version			= "1.2";
Moroes.Author			= "FigureEightLV"; -- Originally by Tandanu
Moroes.LastVanish		= 0;

Moroes:RegisterEvents(
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED"
);

Moroes:AddOption("VanishWarn", true, DBM_MOROES_OPTION_1);
Moroes:AddOption("VanishWarnFade", true, DBM_MOROES_OPTION_2);
Moroes:AddOption("VanishWarnSoon", true, DBM_MOROES_OPTION_3);
Moroes:AddOption("GarroteWarn", true, DBM_MOROES_OPTION_4);
Moroes:AddOption("GougeWarn", true, DBM_MOROES_OPTION_5);
Moroes:AddOption("BlindWarn", false, DBM_MOROES_OPTION_6);

Moroes:AddBarOption("Vanish")
Moroes:AddBarOption("Gouge: (.*)")
Moroes:AddBarOption("Blind: (.*)")

Moroes:RegisterCombat("YELL", DBM_MOROES_YELL_START);

function Moroes:OnCombatStart(delay)
	self:StartStatusBarTimer(40, "Vanish", "Interface\\Icons\\Ability_Vanish");
	self:ScheduleSelf(40, "SoonWarning");
end

function Moroes:OnEvent(event, arg1)	
	if event == "SPELL_CAST_SUCCESS" then
		if arg1.spellId == 29448 then
			if self.Options.VanishWarn then
				self:Announce(DBM_MOROES_VANISH_WARN, 3);
			end
			self.LastVanish = GetTime();
		end
	elseif event == "SPELL_AURA_APPLIED" then
		if arg1.spellId == 37066 and self.Options.GarroteWarn then
			self:Announce(string.format(DBM_MOROES_GARROTE_WARN, tostring(arg1.destName)), 1);
		elseif arg1.spellId == 29425 then
			local target = arg1.destName
			self:StartStatusBarTimer(6, "Gouge: "..target, "Interface\\Icons\\Ability_gouge");
			if self.Options.GougeWarn then
				self:Announce(string.format(DBM_MOROES_GOUGE_WARN, tostring(arg1.destName)), 1);
			end
		elseif arg1.spellId == 34694 then
			local target = arg1.destName
			self:StartStatusBarTimer(10, "Blind: "..target, "Interface\\Icons\\Spell_shadow_mindsteal");
			if self.Options.BlindWarn then
				self:Announce(string.format(DBM_MOROES_BLIND_WARN, tostring(arg1.destName)), 1);
			end
		end
	elseif event == "SPELL_AURA_REMOVED" then		
		if arg1.spellId == 29448 then
			if self.Options.VanishWarnFade then
				self:Announce(DBM_MOROES_VANISH_FADED, 3);
			end
			self:EndStatusBarTimer("Vanish");
			if (GetTime() - self.LastVanish) < 20 then
				self:StartStatusBarTimer(42 - (GetTime() - self.LastVanish), "Vanish", "Interface\\Icons\\Ability_Vanish");
				self:ScheduleSelf(37 - (GetTime() - self.LastVanish), "SoonWarning");
			end
		elseif arg1.spellId == 29425 then
			self.EndStatusBarTimer("Gouge: ");
		elseif arg1.spellId == 34694 then
			self.EndStatusBarTimer("Blind: ");	
		end
	
	elseif event == "SoonWarning" and self.Options.VanishWarnSoon then
		self:Announce(DBM_MOROES_VANISH_SOON, 2);
	end
end
