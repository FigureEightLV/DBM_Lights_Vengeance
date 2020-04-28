local Warlock = DBM:NewBossMod("Warlock", DBM_WARLOCK_NAME, DBM_WARLOCK_DESCRIPTION, DBM_HALLS, DBM_HC_TAB, 7);

Warlock.Version	= "0.1";
Warlock.Author	= "Arta";

Warlock:RegisterCombat("COMBAT");

Warlock:RegisterEvents(
);

function Warlock:OnEvent(event, args)
end

