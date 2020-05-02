﻿-- ---------------------------------------- --
--   Tempest Keep - Chinese localization    --
--   Version:	1.0   			    --
--   Author(s):	Arta		            --
--   Date:	01 May 2008                 --
-- ---------------------------------------- --

-- ----- Notes/Changelog ----- --
-- Boss names and zones are translated
-- Descriptions, warnings are NOT translated !!


if (GetLocale() == "zhCN") then
DBM_MECHANAR			= "能源舰"
DBM_BOTANICA			= "生态船"
DBM_ARCATRAZ			= "禁魔监狱"


-- Mechano-Lord Capacitus
DBM_CAPACITUS_NAME			= "机械领主卡帕西图斯"
DBM_CAPACITUS_DESCRIPTION		= "Announces and timers for Mechano-Lord Capacitus" 

DBM_CAPACITUS_OPTION_POLARITY		= "Warns for Polarity Shift (Heroic)"
DBM_CAPACITUS_OPTION_ENRAGE		= "Warns for Enrage (Heroic)"
DBM_CAPACITUS_OPTION_MAGIC		= "Warns for Magic Shield"
DBM_CAPACITUS_OPTION_DAMAGE		= "Warns for Damage Shield"
DBM_CAPACITUS_WARN_POLARITY		= "Polarity Shift"
DBM_CAPACITUS_WARN_MAGIC		= "Magic Reflection up"
DBM_CAPACITUS_WARN_DAMAGE		= "Damage Reflection up"
DBM_CAPACITUS_WARN_ENRAGE		= "Enrage in %s %s"

-- Nethermancer Sepethrea
DBM_SEPETHREA_NAME			= "灵术师塞比瑟蕾"
DBM_SEPETHREA_DESCRIPTION		= "Announces and timers for Nethermancer Sepethrea"

-- Pathaleon the Calculator
DBM_PATHALEON_NAME		= "计算者帕萨雷恩"
DBM_PATHALEON_DESCRIPTION	= "Announces and timers for Pathaleon the Calculator"

DBM_PATHALEON_OPTION_MC		= "Warns for Mind Control"
DBM_PATHALEON_CHECK_MC		= ""
DBM_PATHALEON_WARN_MC		= ">%s< is Mind Controlled"


-- Commander Sarannis
DBM_SARANNIS_NAME			= "指挥官萨拉妮丝"
DBM_SARANNIS_DESCRIPTION		= "Announces and timers for Commander Sarannis"

-- High Botanist Freywinn
DBM_FREYWINN_NAME			= "高级植物学家弗雷温"
DBM_FREYWINN_DESCRIPTION		= "Announces and timers for High Botanist Freywinn"

DBM_FREYWINN_OPTION_TRANQ		= "Warns for Tranquility"
DBM_FREYWINN_CHECK_TRANQ		= "Nature bends to my will...."
DBM_FREYWINN_WARN_TRANQ			= "Tranquility"

-- Thorngrin the Tender
DBM_THORNGRIN_NAME			= "看管者索恩格林"
DBM_THORNGRIN_DESCRIPTION		= "Announces and timers for Thorngrin the Tender"

-- Laj
DBM_LAJ_NAME			= "拉伊"
DBM_LAJ_DESCRIPTION		= "Announces and timers for Laj"

DBM_LAJ_OPTION_ALLERGIC		= "Warns for Allergic Reaction"
DBM_LAJ_WARN_ALLERGIC		= ">%s< has Allergic Reaction"

-- Warp Splinter
DBM_SPLINTER_NAME			= "迁跃扭木"
DBM_SPLINTER_DESCRIPTION		= "Announces and timers for Warpsplinter"


-- Zereketh the Unbound
DBM_ZEREKETH_NAME			= "自由的瑟雷凯斯"
DBM_ZEREKETH_DESCRIPTION		= "Announces and timers for Zereketh the Unbound"

DBM_ZEREKETH_OPTION_ICON		= "Put a Raid Icon on the person who has Seed of Corruption."
DBM_ZEREKETH_OPTION_SOC			= "Warns for Seed of Corruption."
DBM_ZEREKETH_OPTION_NOVA		= "Warns for Shadow Nova"
DBM_ZEREKETH_OPTION_VOID		= "Warns for Void Zones"
DBM_ZEREKETH_WARN_NOVA			= "Shadow Nova"
DBM_ZEREKETH_WARN_VOID			= "Void Zone incoming!"
DBM_ZEREKETH_WARN_SOC			= "Seed of Corruption on >%s<"

-- Wrath-Scryer Soccothrates
DBM_SOCCO_NAME			= "天怒预言者苏克拉底"
DBM_SOCCO_DESCRIPTION		= "Announces and timers for Wrath-Scryer Soccothrates"

DBM_SOCCO_OPTION_KNOCK		= "Warns for Knock Away"
DBM_SOCCO_WARN_KNOCK		= "Knock Away"

-- Dalliah the Doomsayer
DBM_DALLIAH_NAME		= "末日预言者达尔莉安"
DBM_DALLIAH_DESCRIPTION		= "Announces and timers for Dalliah the Doomsayer"

DBM_DALLIAH_OPTION_WW		= "Warns for Whirlwind"
DBM_DALLIAH_OPTION_GIFT		= "Warns for Gift of the Doomsayer"
DBM_DALLIAH_OPTION_HEAL		= "Warns for Heal"
DBM_DALLIAH_WARN_HEAL		= "Casting Heal"
DBM_DALLIAH_WARN_WW		= "Whirlwind"
DBM_DALLIAH_WARN_GIFT		= ">%s< has Gift of the Doomsayer"

-- Harbinger Skyriss
DBM_SKYRISS_NAME		= "预言者斯克瑞斯"
DBM_SKYRISS_DESCRIPTION		= "Announces and timers for Harbringer Skyriss"
DBM_ARCA_SKYRISS_CHECK_SPLIT	= "We span the universe, as countless as the stars!"

DBM_SKYRISS_OPTION_REND		= "Warns for Mind Rend"
DBM_SKYRISS_OPTION_MC		= "Warns for Mind Control"
DBM_SKYRISS_OPTION_SPLIT		= "Warns for Split"
DBM_SKYRISS_OPTION_SPLITSOON		= "Warning for \"Split Soon\" "
DBM_SKYRISS_WARN_MC		= ">%s< is Mind Controlled"
DBM_SKYRISS_WARN_SPLIT_NOW		= "Harbringer Skyriss has Split"
DBM_SKYRISS_WARN_SPLIT_SOON		= "Split Soon"
DBM_SKYRISS_WARN_REND		= "Mind Rend on >%s<"
end
