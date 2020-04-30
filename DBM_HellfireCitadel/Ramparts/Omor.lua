local Omor = DBM:NewBossMod("Omor", DBM_OMOR_NAME, DBM_OMOR_DESCRIPTION, DBM_RAMPARTS, DBM_HC_TAB, 2);

Omor.Version	= "1.0";
Omor.Author	= "Arta";

Omor:RegisterCombat("COMBAT");

Omor:RegisterEvents(
	"SPELL_AURA_APPLIED"
);

Omor:AddOption("WarnAura", true, DBM_OMOR_OPTION_AURA)
Omor:AddOption("IconAura", true, DBM_OMOR_OPTION_ICONAURA)
Omor:AddOption("WhisperAura", true, DBM_OMOR_OPTION_WHISPERAURA)

function Omor:OnEvent(event, args)
	if event == "SPELL_AURA_APPLIED" then
		if args.spellId == 30695 and args.destName then
			self:SendSync("Aura"..tostring(args.destName))
		elseif args.spellId == 37566 and args.destName then
			self:SendSync("Bane"..tostring(args.destName))
		end
	end
end

function Omor:OnSync(msg)
	if msg:sub(0,4) == "Aura" or "Bane" then
		if msg:sub(0,4) == "Aura" then
			spellName = "Treacherous Aura"
		else
			spellName = "Bane of Treachery"
		end
		target = msg:sub(5);
		if self.Options.WhisperAura then
			self:SendHiddenWhisper(DBM_OMOR_WHISPER_AURA:format(spellName), target)
		end
		if self.Options.IconAura then
			self:SetIcon(target, 15)
		end
		if self.Options.WarnAura then
			self:Announce(DBM_OMOR_WARN_AURA:format(target), 3)
		end
	end
end
		