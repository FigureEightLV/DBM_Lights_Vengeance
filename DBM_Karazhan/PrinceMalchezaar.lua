local Prince = DBM:NewBossMod("Prince", DBM_PRINCE_NAME, DBM_PRINCE_DESCRIPTION, DBM_KARAZHAN, DBM_KARAZHAN_TAB, 12);

Prince.Version			= "1.2";
Prince.Author			= "FigureEightLV"; -- Originally by Tandanu
Prince.Infernals 		= 0;
Prince.Phase			= 1;
Prince.LastEnfeeble		= 0;

Prince:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_MISSED",
	"SPELL_CAST_START",
	"CHAT_MSG_MONSTER_YELL"
);

Prince:RegisterCombat("YELL", DBM_PRINCE_YELL_PULL);

Prince:AddOption("WarnNova", true, DBM_PRINCE_OPTION_1);
Prince:AddOption("WarnEnfeeble", true, DBM_PRINCE_OPTION_2);
Prince:AddOption("SendWhisper", false, DBM_PRINCE_OPTION_3);
Prince:AddOption("WarnSWP1", true, DBM_PRINCE_OPTION_4);
Prince:AddOption("WarnInfernal", true, DBM_PRINCE_OPTION_5);
Prince:AddOption("WarnSWP2", true, DBM_PRINCE_OPTION_6);

Prince:AddBarOption("Infernal")
Prince:AddBarOption("Enfeeble")
Prince:AddBarOption("Shadow Nova")

function Prince:OnCombatStart(delay)
	Prince.Infernals 		= 0;
	Prince.Phase			= 1;
	self:StartStatusBarTimer(40 - delay, "Infernal", "Interface\\Icons\\Spell_Shadow_SummonInfernal");
end

function Prince:OnCombatEnd()
	Prince.Infernals 		= 0;
	Prince.Phase			= 1;
end

function Prince:OnEvent(event, arg1)
	if event == "SPELL_AURA_APPLIED" or event == "SPELL_MISSED" then
		if arg1.spellId == 30843 then
			local target = arg1.destName
			if target then
				if self.Options.SendWhisper and DBM.Rank >= 1 then
					self:SendHiddenWhisper(DBM_PRINCE_WHISP_ENFEEBLE, target)
				end
				if (GetTime() - self.LastEnfeeble) > 12 then
					if self.Options.WarnEnfeeble then
						self:Announce(DBM_PRINCE_WARN_ENFEEBLE, 3);
					end
					self:StartStatusBarTimer(10, "Enfeeble", "Interface\\Icons\\Spell_Shadow_LifeDrain02")
					self.LastEnfeeble = GetTime();
				end
			end
		elseif arg1.spellId == 30854 or arg1.spellId == 30898 then
			if self.Options.WarnSWP1 and self.Phase == 1 then
				self:Announce(string.format(DBM_PRINCE_WARN_SWP, tostring(arg1.destName)), 1);
			end
			if self.Options.WarnSWP2 and self.Phase == 3 then
				self:Announce(string.format(DBM_PRINCE_WARN_SWP, tostring(arg1.destName)), 1);
			end
		end
	elseif event == "SPELL_CAST_START" then
		if arg1.spellId == 30852 then
			if self.Options.WarnNova then
				self:Announce(DBM_PRINCE_WARN_NOVA, 3);
			end
			self:StartStatusBarTimer(2, "Shadow Nova", "Interface\\Icons\\Spell_Shadow_Shadowfury");
		end
	elseif event == "CHAT_MSG_MONSTER_YELL" then
		if arg1 == DBM_PRINCE_YELL_INF1 or arg1 == DBM_PRINCE_YELL_INF2 then
			self.Infernals = self.Infernals + 1;
			if self.Options.WarnInfernal then
				self:Announce(string.format(DBM_PRINCE_WARN_INF, self.Infernals), 3);
			end

			if not self:GetStatusBarTimerTimeLeft("Infernal") then
				self:StartStatusBarTimer(45, "Infernal", "Interface\\Icons\\Spell_Shadow_SummonInfernal");
			end
			
			if self.Phase == 1 then
				self:StartStatusBarTimer(45, "Infernal", "Interface\\Icons\\Spell_Shadow_SummonInfernal");
			elseif self.Phase == 3 then
				self:StartStatusBarTimer(15, "Infernal", "Interface\\Icons\\Spell_Shadow_SummonInfernal");
			end
		
		elseif arg1 == DBM_PRINCE_YELL_P3 then
			self.Phase = 3;
			self:EndStatusBarTimer("Infernal");
			self:StartStatusBarTimer(15, "Infernal", "Interface\\Icons\\Spell_Shadow_SummonInfernal");
			self:Announce(string.format(DBM_PRINCE_WARN_PHASE, 3), 1);
		elseif arg1 == DBM_PRINCE_YELL_P2 then
			self:Announce(string.format(DBM_PRINCE_WARN_PHASE, 2), 1);
		end
	end
end
