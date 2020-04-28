local Maker = DBM:NewBossMod("Maker", DBM_MAKER_NAME, DBM_MAKER_DESCRIPTION, DBM_FURNACE, DBM_HC_TAB, 4);

Maker.Version	= "0.1";
Maker.Author	= "Arta";

Maker:RegisterCombat("COMBAT");

Maker:RegisterEvents(
);

function Maker:OnEvent(event, args)
end

