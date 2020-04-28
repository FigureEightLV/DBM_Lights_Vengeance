local Kargath = DBM:NewBossMod("Kargath", DBM_KARGATH_NAME, DBM_KARGATH_DESCRIPTION, DBM_HALLS, DBM_HC_TAB, 9);

Kargath.Version	= "1.0";
Kargath.Author	= "Arta";

Kargath:RegisterCombat("COMBAT");

Kargath:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL"
);

Kargath:AddOption("WarnDance", true, DBM_KARGATH_OPTION_DANCE)

function Kargath:OnEvent(event, args)
	if event == "CHAT_MSG_MONSTER_YELL" then
		if args == DBM_KARGATH_CHECK_DANCE1 or 
		   args == DBM_KARGATH_CHECK_DANCE2 or
		   args == DBM_KARGATH_CHECK_DANCE3 then
			self:SendSync("Dance")
		end
	end
end

function Kargath:OnSync(msg)
	if msg == "Dance" and self.Options.WarnDance then
		self:Announce(DBM_KARGATH_WARN_DANCE, 3)
	end
end