local Kelidan = DBM:NewBossMod("Kelidan", DBM_KELIDAN_NAME, DBM_KELIDAN_DESCRIPTION, DBM_FURNACE, DBM_HC_TAB, 6);

Kelidan.Version	= "1.0";
Kelidan.Author	= "Arta";

Kelidan:RegisterCombat("COMBAT");

Kelidan:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL"
);

Kelidan:AddOption("WarnNova", true, DBM_KELIDAN_OPTION_NOVA)

function Kelidan:OnEvent(event, args)
	if event == "CHAT_MSG_MONSTER_YELL" then
		if args == DBM_KELIDAN_CHECK_NOVA then
			self:SendSync("Nova")
		end
	end
end

function Kelidan:OnSync(msg)
	if msg == "Nova" and self.Options.WarnNova then
		self:Announce(DBM_KELIDAN_WARN_NOVA, 3)
	end
end