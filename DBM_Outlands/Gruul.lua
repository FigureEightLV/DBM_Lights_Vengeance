local Gruul = DBM:NewBossMod("Gruul", DBM_GRUUL_NAME, DBM_GRUUL_DESCRIPTION, DBM_GRUULS_LAIR, DBMGUI_TAB_OTHER_BC, 2);

Gruul.Version	= "1.2";
Gruul.Author	= "FigureEightLV"; -- Originally by Tandanu
Gruul.Grows		= 0;

Gruul.MinVersionToSync = 3.00;

Gruul:RegisterEvents(
	"CHAT_MSG_MONSTER_EMOTE",
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_START"
);

Gruul:RegisterCombat("YELL", DBM_GRUUL_SAY_PULL);

Gruul:AddOption("RangeCheck", true, DBM_GRUUL_RANGE_OPTION);
Gruul:AddOption("GrowWarn", true, DBM_GRUUL_GROW_OPTION);
Gruul:AddOption("ShatterWarn", true, DBM_GRUUL_SHATTER_OPTION);
Gruul:AddOption("SilenceWarn", false, DBM_GRUUL_SILENCE_OPT);
Gruul:AddOption("SpecWarning", true, DBM_GRUUL_CAVE_OPTION);

Gruul:AddBarOption("Grow #(%d+)", true, DBM_GRUUL_OPTION_GROWBAR)
Gruul:AddBarOption("Ground Slam")
Gruul:AddBarOption("Shatter")
Gruul:AddBarOption("Silence")

function Gruul:OnCombatStart(delay)
	self.Grows = 0;	
	self:ScheduleSelf(106 - delay, "SilenceSoon");
	self:StartStatusBarTimer(110 - delay, "Silence", "Interface\\Icons\\Spell_Holy_ImprovedResistanceAuras");	
	self:ScheduleSelf(35 - delay, "SlamSoon");
	self:StartStatusBarTimer(40 - delay, "Ground Slam", "Interface\\Icons\\Spell_Nature_ThunderClap");	
	self:StartStatusBarTimer(30 - delay, "Grow #1", "Interface\\Icons\\Spell_Nature_ShamanRage", true);

	if self.Options.RangeCheck then
		DBM_Gui_DistanceFrame_Show();
		DBM_Gui_DistanceFrame_SetDistance(15);
	end
end

function Gruul:OnCombatEnd()
	self.Grows = 0;
	if self.Options.RangeCheck then
		DBM_Gui_DistanceFrame_Hide();
		DBM_Gui_DistanceFrame_SetDistance(10);
	end
end

function Gruul:OnEvent(event, arg1)
	if event == "CHAT_MSG_MONSTER_EMOTE" then
		if arg1 == DBM_GRUUL_GROW_EMOTE then
			self.Grows = self.Grows + 1;
			if self.Options.GrowWarn then
				self:Announce(string.format(DBM_GRUUL_GROW_ANNOUNCE, self.Grows), 1);
			end
			
			self:StartStatusBarTimer(30, "Grow #"..(self.Grows + 1), "Interface\\Icons\\Spell_Nature_ShamanRage", true);
		elseif arg1 == DBM_GRUUL_EMOTE_SHATTER then
			if self.Options.ShatterWarn then
				self:Announce(DBM_GRUUL_SHATTER_WARN, 3);
			end
			
			self:ScheduleSelf(71, "SlamSoon");
			self:EndStatusBarTimer("Ground Slam");
			self:StartStatusBarTimer(76, "Ground Slam", "Interface\\Icons\\Spell_Nature_ThunderClap");
		end
	elseif event == "SPELL_AURA_APPLIED" then
		if arg1.spellId == 36240 and arg1.destName == UnitName("player") and self.Options.SpecWarning then
			self:AddSpecialWarning(DBM_GRUUL_CAVE_IN_WARN)
		elseif arg1.spellId == 36297 then
			if self.Options.SilenceWarn then
				self:Announce(DBM_GRUUL_SILENCE_WARN, 2)
			end
			
			self:UnScheduleSelf("SilenceSoon");
			self:EndStatusBarTimer("Silence");
			self:ScheduleSelf(34, "SilenceSoon");
			self:StartStatusBarTimer(38, "Silence", "Interface\\Icons\\Spell_Holy_ImprovedResistanceAuras");
		end
	elseif event == "SPELL_CAST_START" then
		if arg1.spellId == 33525 then -- 39187?
			if self.Options.ShatterWarn then
				self:Announce(DBM_GRUUL_SHATTER_10WARN, 2);
				self:SendSync("ExtendSilence");
			end
			self:EndStatusBarTimer("Ground Slam");
			self:StartStatusBarTimer(10, "Shatter", "Interface\\Icons\\Spell_Nature_ThunderClap");
		end
	elseif event == "SlamSoon" then
		if self.Options.ShatterWarn then
			self:Announce(DBM_GRUUL_SHATTER_20WARN, 2);
		end
	elseif event == "SilenceSoon" then
		if self.Options.SilenceWarn then
			self:Announce(DBM_GRUUL_SILENCE_SOON_WARN, 1)
		end
	end
end

function Gruul:OnSync(msg)
	if msg == "ExtendSilence" then
		local timeLeft = self:GetStatusBarTimerTimeLeft("Silence")
		self:EndStatusBarTimer("Silence")
		self:StartStatusBarTimer(timeLeft + 11, "Silence", "Interface\\Icons\\Spell_Holy_ImprovedResistanceAuras");
		self:ScheduleSelf(timeLeft + 11, "SilenceWarn");
	end
end