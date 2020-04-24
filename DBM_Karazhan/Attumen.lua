local Attumen = DBM:NewBossMod("Attumen", DBM_ATH_NAME, DBM_ATH_DESCRIPTION, DBM_KARAZHAN, DBM_KARAZHAN_TAB, 1);

Attumen.Version			= "1.2";
Attumen.Author			= "FigureEightLV"; -- Originally by Tandanu
Attumen.LastCurse		= 0;
Attumen.Phase			= 1;

Attumen:AddOption("PreWarning", false, DBM_ATH_OPTION_1)

Attumen:AddBarOption("Curse")

Attumen:RegisterEvents(
	"SPELL_AURA_APPLIED",	
	"CHAT_MSG_MONSTER_YELL",
	"SPELL_CAST_SUCCESS"
);

Attumen:RegisterCombat("COMBAT", 5, DBM_ATH_MIDNIGHT, DBM_ATH_NAME, DBM_ATH_NAME);

function Attumen:OnCombatStart()
	self.Phase = 1;
	self:Announce(string.format(DBM_ATH_WARN_PHASE, 1), 1);
end

function Attumen:OnCombatEnd()
	self.Phase = 1;
end

function Attumen:OnEvent(event, arg1)
	if event == "CurseWarning" and arg1 and self.Options.PreWarning then
		self:Announce(DBM_ATH_CURSE_SOON, 1);
		
	elseif event == "CHAT_MSG_MONSTER_YELL" then
		if arg1 == DBM_ATH_YELL_1 then
			self.Phase = 2;
			self:UnScheduleSelf("CurseWarning", 5);
			self:EndStatusBarTimer("Curse");
			self:Announce(string.format(DBM_ATH_WARN_PHASE, 2), 1);
		end
		
	elseif event == "SPELL_CAST_SUCCESS" then
		if arg1.spellId == 29799 then
			self:Announce(DBM_ATH_SUMMON, 1);
		end	
		
	elseif event == "SPELL_AURA_APPLIED" then
		if arg1.spellId == 43127 or arg1.spellId == 29833 then
			self:EndStatusBarTimer("Curse");
			self:UnScheduleSelf("CurseWarning", 5);
			self:Announce(DBM_ATH_WARN_CURSE, 2);
			self.LastCurse = GetTime();
			
			if self.Phase == 2 then
				self:StartStatusBarTimer(41, "Curse", "Interface\\Icons\\Spell_Holy_SenseUndead");
				self:ScheduleSelf(36, "CurseWarning", 5);
			else
				self:StartStatusBarTimer(31, "Curse", "Interface\\Icons\\Spell_Holy_SenseUndead");
				self:ScheduleSelf(26, "CurseWarning", 5);
			end
		end
	end
end
