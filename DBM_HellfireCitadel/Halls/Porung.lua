local Porung = DBM:NewBossMod("Porung", DBM_PORUNG_NAME, DBM_PORUNG_DESCRIPTION, DBM_HALLS, DBM_HC_TAB, 10);

Porung.Version	= "0.1";
Porung.Author	= "Arta";

Porung:RegisterCombat("COMBAT");

Porung:RegisterEvents(
);

function Porung:OnEvent(event, args)
end

