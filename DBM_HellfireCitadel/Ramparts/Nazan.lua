local Nazan = DBM:NewBossMod("Nazan", DBM_NAZAN_NAME, DBM_NAZAN_DESCRIPTION, DBM_RAMPARTS, DBM_HC_TAB, 3);

Nazan.Version	= "0.1";
Nazan.Author	= "Arta";

Nazan:RegisterCombat("COMBAT", nil, DBM_NAZAN_NAME, "Nazan & Vazruden", DBM_VAZRUDEN_NAME, nil);

Nazan:RegisterEvents(
);

function Nazan:OnEvent(event, args)
end

