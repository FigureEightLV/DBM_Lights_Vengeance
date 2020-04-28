local Broggok = DBM:NewBossMod("Broggok", DBM_BROGGOK_NAME, DBM_BROGGOK_DESCRIPTION, DBM_FURNACE, DBM_HC_TAB, 5);

Broggok.Version	= "1.0";
Broggok.Author	= "Arta";

Broggok:RegisterCombat("COMBAT");

Broggok:RegisterEvents(
	"SPELL_DAMAGE"
);

Broggok:AddOption("WarnPoison", true, DBM_BROGGOK_OPTION_POISON)

function Broggok:OnEvent(event, args)
	if event == "SPELL_DAMAGE" then
		if args.spellId == 31259 then
			self:SendSync("Poison")
		end
	end
end

function Broggok:OnSync(msg)
	if msg == "Poison" and self.Options.WarnPoison then
		self:Announce(DBM_BROGGOK_WARN_POISON, 3)
	end
end