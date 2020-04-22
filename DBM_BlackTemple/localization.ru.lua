if GetLocale() == "ruRU" then
DBM_BT_TAB			= "TempleTab"
DBM_BLACK_TEMPLE	= "Черный Храм";


-- High Warlord Naj'entus
DBM_NAJENTUS_NAME					= "Верховный Полководец Надж'ентус";
DBM_NAJENTUS_DESCRIPTION			= "Объявляет Пронзающий шип и Щит Прилива.";

DBM_NAJENTUS_OPTION_ICON			= "Установить метку на цель Пронзающий шип";
DBM_NAJENTUS_OPTION_RANGECHECK		= "Показать область границы контроля";
DBM_NAJENTUS_OPTION_FRAME			= "Показать игроков с менее чем 8500 здоровья";

DBM_NAJENTUS_YELL_PULL				= "Вы умрете во имя леди Вайш!";
DBM_NAJENTUS_DEBUFF_SPINE			= "([^%s]+) (%w+) под воздействием эффекта Пронзающий шип.";
DBM_NAJENTUS_DEBUFF_SHIELD			= "Верховный Полководец Надж'ентус под воздействием эффекта Щит Прилива.";
DBM_NAJENTUS_FADE_SHIELD			= "Щит Прилива исчез с Верховного Полководца Надж'ентус.";

DBM_NAJENTUS_WARN_SPINE				= "*** >%s< под воздействием эффекта Пронзающий шип ***";
DBM_NAJENTUS_WARN_ENRAGE			= "*** Ярость через %s %s ***";
DBM_NAJENTUS_WARN_SHIELD			= "*** Щит Прилива ***";
DBM_NAJENTUS_WARN_SHIELD_SOON		= "*** Скоро Щит Прилива ***";

DBM_NAJENTUS_FRAME_TITLE			= "Надж'ентус"
DBM_NAJENTUS_FRAME_TEXT				= "Игроки с менее чем 8500 здоровья:"
DBM_NAJENTUS_SPELL_PWS				= "Слово силы: Щит"
DBM_NAJENTUS_SPELL_FW				= "Защита от магии льда"
DBM_NAJENTUS_SPELL_FB				= "Скверноцвет"

DBM_SBT["Enrage"]				    = "Ярость";
DBM_SBT["Next Tidal Shield"]	    = "Следующий Щит Прилива";

-- Supremus
DBM_SUPREMUS_NAME					= "Супремус";
DBM_SUPREMUS_DESCRIPTION			= "Объявляет фазы и цели.";
DBM_SUPREMUS_OPTION_TARGETWARN		= "Объявить цель Супремуса в фазе 2";
DBM_SUPREMUS_OPTION_TARGETICON		= "Установить метку на цель Супремуса";
DBM_SUPREMUS_OPTION_TARGETWHISPER	= "Сообщить цели Супремуса";

DBM_SUPREMUS_EMOTE_PHASE1			= "бьет кулаками о землю в гневе!";
DBM_SUPREMUS_EMOTE_PHASE2			= "Земля начинает разверзаться!";
DBM_SUPREMUS_EMOTE_NEWTARGET		= "выбирает новую цель";
DBM_SUPREMUS_DEBUFF_FIRE			= "Вы под воздействием Расплавленного огня.";
DBM_SUPREMUS_DEBUFF_VOLCANO			= "Вы под воздействием вулканического гейзера.";

DBM_SUPREMUS_WARN_KITE_TARGET		= "Цель: >%s<";
DBM_SUPREMUS_WARN_PHASE_1_SOON		= "*** Фаза танкования через 10 секунд ***";
DBM_SUPREMUS_WARN_PHASE_2_SOON		= "*** Фаза кайтинга через 10 секунд ***";
DBM_SUPREMUS_WARN_PHASE_1			= "*** Фаза танкования ****";
DBM_SUPREMUS_WARN_PHASE_2			= "*** Фаза кайтинга ***";
DBM_SUPREMUS_SPECWARN_FIRE			= "Расплавленный огонь!";
DBM_SUPREMUS_SPECWARN_VOLCANO		= "Вулкан Супремуса!";
DBM_SUPREMUS_WHISPER_RUN_AWAY		= "Бегите!";

DBM_SBT["Enrage"]				    = "Ярость";
DBM_SBT["Kite Phase"]			    = "Фаза кайтинга";
DBM_SBT["Tank & Spank Phase"]	    = "Фаза танкования";

-- Shade of Akama
DBM_AKAMA_NAME						= "Тень Акамы";
DBM_AKAMA_DESCRIPTION				= nil;

DBM_AKAMA_MOB_AKAMA					= "Акама";
DBM_AKAMA_MOB_DEFENDER				= "Пеплоуст-защитник";
DBM_AKAMA_MOB_CHANNELER				= "Пеплоуст-чаротворец";
DBM_AKAMA_MOB_SORCERER				= "Пеплоуст-колдун";
DBM_AKAMA_MOB_DIES					= "%s погидает.";

DBM_AKAMA_WARN_CHANNELER_DOWN		= "**** %s/6 чаротворцев убито ****";
DBM_AKAMA_WARN_SORCERER_DOWN		= "**** %s колдунов убито ****";

-- Teron Gorefiend
DBM_GOREFIEND_NAME					= "Терон Кровожад";
DBM_GOREFIEND_DESCRIPTION			= "Объявляет Тень смерти и Испепеление.";

DBM_GOREFIEND_OPTION_INCINERATE		= "Объявить Испепеление";

DBM_GOREFIEND_YELL_PULL				= "Мне отмщение!";
DBM_GOREFIEND_DEBUFF_SOD			= "([^%s]+) (%w+) под воздействием эффекта Тень смерти%.";
DBM_GOREFIEND_DEBUFF_INCINERATE		= "([^%s]+) (%w+) под воздействием эффекта Испепеление%.";

DBM_GOREFIEND_WARN_SOD				= "*** Тень смерти: >%s< ***";
DBM_GOREFIEND_WARN_INCINERATE		= "*** Испепеление: >%s< ***";

DBM_GOREFIEND_SPECWARN_SOD			= "Тень смерти";

	DBM_SBT["TeronGorefiend"]		= {
		{
			"Vengeful Spirit: (.*)",
			"Мстительный дух: %1",
		},
		{
			"Shadow of Death: (.*)",
			"Тень смерти: %1",
		}
	}
    DBM_SBT["Терон Кровожад"] = DBM_SBT["TeronGorefiend"]

-- Bloodboil
DBM_BLOODBOIL_NAME					= "Гуртогг Кипящая Кровь";
DBM_BLOODBOIL_DESCRIPTION			= "Объявляет Кипящая кровь и Ярость скверны.";
DBM_BLOODBOIL_OPTION_SMASH			= "Объявить Удар по дуге";

DBM_BLOODBOIL_YELL_PULL				= "Орда тебя... сокрушит.";
DBM_BLOODBOIL_DEBUFF_BLOODBOIL		= "под воздействием эффекта Кипящая кровь";
DBM_BLOODBOIL_GAIN_FEL_RAGE			= "Гуртогг Кипящая Кровь читает Ярость скверны.";
DBM_BLOODBOIL_FADE_FEL_RAGE			= "Ярость скверны исчеза с Гуртогга Кипящая Кровь.";
DBM_BLOODBOIL_DEBUFF_FEL_RAGE		= "([^%s]+) (%w+) под воздействием эффекта Ярость скверны%.";
DBM_BLOODBOIL_DEBUFF_SMASH			= "([^%s]+) (%w+) под воздействием эффекта Удар по дуге%.";

DBM_BLOODBOIL_WARN_BLOODBOIL		= "*** Кипящая кровь #%s ***";
DBM_BLOODBOIL_WARN_ENRAGE			= "*** Ярость через %s %s ***";
DBM_BLOODBOIL_WARN_FELRAGE_SOON		= "*** Скоро Ярость скверны ***";
DBM_BLOODBOIL_WARN_NORMAL_SOON		= "*** Обычная фаза через 5 секунд ***";
DBM_BLOODBOIL_WARN_FELRAGE			= "*** >%s< под воздействием эффекта Ярость скверны ***";
DBM_BLOODBOIL_WARN_NORMALPHASE		= "*** Обычная фаза ***";
DBM_BLOODBOIL_WARN_SMASH			= "*** Удар по дуге ***";
DBM_BLOODBOIL_WARN_SMASH_SOON		= "*** Скоро Удар по дуге ***";

DBM_SBT["Enrage"]		            = "Ярость";
DBM_SBT["Bloodboil"]	            = "Кипящая кровь";
DBM_SBT["Fel Rage"]		            = "Ярость скверны";
DBM_SBT["Normal Phase"]	            = "Обычная фаза";
DBM_SBT["Arcing Smash"]	            = "Удар по дуге";

-- Essence (Reliquary) of Souls
DBM_SOULS_NAME						= "Воплощение страдания"
DBM_SOULS_DESCRIPTION				= "Объявляет Ярость, Одержимость, Истощение души, Рунный щит, Нечувствительность и Злоба."
DBM_SOULS_OPTION_DRAIN				= "Объявить Истощение души"
DBM_SOULS_OPTION_DRAIN_CAST			= "Объявить заклинение Истощение души (полезен для Массовое рассеивание)"
DBM_SOULS_OPTION_FIXATE				= "Объявить Одержимость"
DBM_SOULS_OPTION_SPITE				= "Объявить Злоба"
DBM_SOULS_OPTION_SCREAM				= "Объявить Крик души"
DBM_SOULS_OPTION_SPECWARN_SPITE		= "Показать спец-предупреждение, когда вы под воздействием Злоба"
DBM_SOULS_OPTION_WHISPER_SPITE		= "Сообщить цели Злоба"

DBM_SOULS_BOSS_SUFFERING			= "Воплощение страдания"
DBM_SOULS_BOSS_DESIRE				= "Воплощение желания"
DBM_SOULS_BOSS_KILL_NAME			= "Воплощение гнева"
DBM_SOULS_YELL_PULL					= "Страдание и боль вот все, что ожидать вас!" -- Essence of Suffering
DBM_SOULS_EMOTE_ENRAGE				= "%s становится разъяренным!"
DBM_SOULS_YELL_DESIRE				= "Можешь взять все, что желаешь... но не даром."
DBM_SOULS_YELL_DESIRE_DEMONIC		= "Shi shi rikk rukadare shi tichar kar x gular"
DBM_SOULS_DEBUFF_SPITE				= "([^%s]+) (%w+) под воздействием Злоба%."
DBM_SOULS_DEBUFF_SOULDRAIN			= "([^%s]+) (%w+) под воздействием Истощение души%."
DBM_SOULS_DEBUFF_FIXATE				= "([^%s]+) (%w+) под воздействием Одержимость%."
DBM_SOULS_YELL_ANGER_INC			= "Опасайся: я жив!"

DBM_SOULS_WARN_ENRAGE_SOON			= "*** Скоро Ярость ***"
DBM_SOULS_WARN_ENRAGE				= "*** Ярость ***"
DBM_SOULS_WARN_ENRAGE_OVER			= "*** Ярость через ***"
DBM_SOULS_WARN_RUNESHIELD			= "*** Рунный щит ***"
DBM_SOULS_WARN_RUNESHIELD_SOON		= "*** Рунный щит через 3 секунды ***"
DBM_SOULS_WARN_DEADEN				= "*** Нечувствительность ****"
DBM_SOULS_WARN_DEADEN_SOON			= "*** Нечувствительность через 5 секунд ***"
DBM_SOULS_WARN_DESIRE_INC			= "*** Воплощение желания - Нулевая мана примерно через 3 минуты ***"
DBM_SOULS_WARN_MANADRAIN			= "*** Нулевая мана через 20 секунд ***"
DBM_SOULS_WARN_SPITE				= "*** Злоба на %s ***"
DBM_SOULS_WARN_SOULDRAIN			= "*** Истощение души на %s ***"
DBM_SOULS_WARN_SOULDRAIN_CAST		= "*** Читает заклинание Истощение души ***"
DBM_SOULS_WARN_FIXATE				= "*** Одержимость: >%s< ***"
DBM_SOULS_SPECWARN_FIXATE			= "Одержимость!"
DBM_SOULS_WARN_SCREAM				= "*** Крик души ***"
DBM_SOULS_SPECWARN_SPITE			= "Злоба!"
DBM_SOULS_WARN_ANGER_INC			= "*** Воплощение гнева ***";
DBM_SOULS_WHISPER_SPITE				= "Злоба на вас!"

DBM_SBT["Enrage"]		            = "Ярость";
DBM_SBT["Next Enrage"]	            = "Следующая Ярость";
DBM_SBT["Mana Drain"]	            = "Похищение маны";
DBM_SBT["Rune Shield"]	            = "Рунный щит";
DBM_SBT["Deaden"]		            = "Нечувствительность";
DBM_SBT["Soul Scream"]	            = "Крик души";
DBM_SBT["Souls"]					= {
		[1] = {
			"Fixate: (.*)",
			"Одержимость: %1",
		}
	}
DBM_SBT["Воплощение страдания"] = DBM_SBT["Souls"]

-- Mother Shahraz
DBM_SHAHRAZ_NAME					= "Матушка Шахраз"
DBM_SHAHRAZ_DESCRIPTION				= "Объявляет Смертельное притяжение, устанавливает метку и отправляет сообщение. Объявляет и показывает таймер для Лучей."
DBM_SHAHRAZ_OPTION_BEAM				= "Объявить Лучи"
DBM_SHAHRAZ_OPTION_BEAM_SOON		= "Показать предупреждение \"Скоро Луч\""

DBM_SHAHRAZ_YELL_PULL				= "Итак... дела или удовольствие?"

DBM_SHAHRAZ_WARN_ENRAGE				= "*** Ярость через %s %s ***"
DBM_SHAHRAZ_WARN_FA					= "*** Смертельное притяжение на %s ***"
DBM_SHAHRAZ_SPECWARN_FA				= "Смертельное притяжение"
DBM_SHAHRAZ_WHISPER_FA				= "Смертельное притяжение на вас!"
DBM_SHAHRAZ_WARN_BEAM_VILE			= "*** Ужасный луч ***"
DBM_SHAHRAZ_WARN_BEAM_SINISTER		= "*** Зловещий луч ***"
DBM_SHAHRAZ_WARN_BEAM_SINFUL		= "*** Греховный луч ***"
DBM_SHAHRAZ_WARN_BEAM_WICKED		= "*** Злобный луч ***"
DBM_SHAHRAZ_WARN_BEAM_SOON			= "*** Луч через 3 секунды ***"

DBM_SBT["Enrage"]		            = "Ярость";
DBM_SBT["Next Beam"]	            = "Следующий Луч";

-- Illidari Council
DBM_COUNCIL_NAME					= "Совет Иллидари"
DBM_COUNCIL_DESCRIPTION				= "Объявляет Исцеляющий круг, Смертельный яд, Божественный гнев, Исчезновение и Щиты."
DBM_COUNCIL_OPTION_COH				= "Объявить Исцеляющий круг"
DBM_COUNCIL_OPTION_DP				= "Объявить Смертельный яд"
DBM_COUNCIL_OPTION_DW				= "Объявить Божественный гнев"
DBM_COUNCIL_OPTION_VANISH			= "Объявить Исчезновение"
DBM_COUNCIL_OPTION_VANISHFADED		= "Показать предупреждение, когда Исчезновение"
DBM_COUNCIL_OPTION_VANISHFADESOON	= "Показать 5 секундное предупреждение перед Исчезновением"
DBM_COUNCIL_OPTION_SN				= "Объявить Отражающий щит"
DBM_COUNCIL_OPTION_SS				= "Объявить Щит заклятий"
DBM_COUNCIL_OPTION_SM				= "Объявить Ближний бой - щит"
DBM_COUNCIL_OPTION_DEVAURA			= "Объявить Аура благочестия"
DBM_COUNCIL_OPTION_RESAURA			= "Объявить Аура сопротивления"

DBM_COUNCIL_MOB_GATHIOS				= "Гатиос Изувер"
DBM_COUNCIL_MOB_MALANDE				= "Леди Маланда"
DBM_COUNCIL_MOB_ZEREVOR				= "Верховный пустомант Зеревор"
DBM_COUNCIL_MOB_VERAS				= "Верас Глубокий Мрак"

DBM_COUNCIL_MOB_GATHIOS_EN			= "Гатиос Изувер"
DBM_COUNCIL_MOB_MALANDE_EN			= "Леди Маланда"
DBM_COUNCIL_MOB_ZEREVOR_EN			= "Верховный пустомант Зеревор"
DBM_COUNCIL_MOB_VERAS_EN			= "Верас Глубокий Мрак"

DBM_COUNCIL_YELL_PULL1				= "Общий – такой грубый язык… Вандаль!"
DBM_COUNCIL_YELL_PULL2				= "Желаешь проверить меня?"
DBM_COUNCIL_YELL_PULL3				= "У меня есть дела поважнее…"
DBM_COUNCIL_YELL_PULL4				= "Убегай или умри!"

DBM_COUNCIL_WARN_CAST_COH			= "Исцеляющий круг"
DBM_COUNCIL_WARN_POISON				= ">%s< под воздействием эффекта Смертельный яд"
DBM_COUNCIL_WARN_SHIELD_NORMAL		= "Отражающий щит"
DBM_COUNCIL_WARN_SHIELD_SPELL		= "Щит заклятий на %s"
DBM_COUNCIL_WARN_SHIELD_MELEE		= "Ближний бой - щит на %s"
DBM_COUNCIL_WARN_VANISH				= "Исчезновение"
DBM_COUNCIL_WARN_VANISH_FADED		= "Исчезнувший"
DBM_COUNCIL_WARN_WRATH				= ">%s< под воздействием эффекта Божественный гнев"
DBM_COUNCIL_WARN_AURA_DEV			= "Аура благочестия"
DBM_COUNCIL_WARN_AURA_RES			= "Аура сопротивления"
DBM_COUNCIL_WARN_VANISHFADE_SOON	= "Исчезновение через 5 секунд"

DBM_SBT["Enrage"]					= "Ярость";
DBM_SBT["Circle of Healing"]		= "Исцеляющий круг";
DBM_SBT["Next Circle of Healing"]	= "Следующий Исцеляющий круг";
DBM_SBT["Reflective Shield"]		= "Отражающий щит";
DBM_SBT["Vanish"]					= "Исчезновение";
DBM_SBT["Devotion Aura"]			= "Аура благочестия";
DBM_SBT["Resistance Aura"]			= "Аура сопротивления";
DBM_SBT["Divine Wrath"]				= "Божественный гнев";

DBM_SBT["Council"]					= {
		{
			"Spell Shield: (.*)",
			"Щит заклятий: %1",
		},
		{
			"Melee Shield: (.*)",
			"Ближний бой - щит: %1",
		},
	}
DBM_SBT["Совет Иллидари"] = DBM_SBT["Council"]

-- Illidan Stormrage
DBM_ILLIDAN_NAME					= "Иллидан Ярость Бури"
DBM_ILLIDAN_DESCRIPTION				= "Объявляет Фазы, Срез, Тенедемон, Преграда, Взрыв глаза, Пламенная боль, Темные демоны, Выброс пламени и Ярость."
DBM_ILLIDAN_OPTION_RANGECHECK		= "Показать область границы контроля в фазе 3"
DBM_ILLIDAN_OPTION_PHASES			= "Объявить фазы"
DBM_ILLIDAN_OPTION_SHEARCAST		= "Объявить чтение заклинания Срез"
DBM_ILLIDAN_OPTION_SHEAR			= "Объявить Срез"
DBM_ILLIDAN_OPTION_SHADOWFIEND		= "Объявить Тенедемон"
DBM_ILLIDAN_OPTION_ICONFIEND		= "Установить метку на цель демона Тьмы"
DBM_ILLIDAN_OPTION_BARRAGE			= "Объявить Темное заграждение"
DBM_ILLIDAN_OPTION_BARRAGE_SOON		= "Показать предупреждение \"Скоро Темное заграждение\""
DBM_ILLIDAN_OPTION_EYEBEAM			= "Объявить Взрыв глаза"
DBM_ILLIDAN_OPTION_FLAMES			= "Объявить Пламенная боль"
DBM_ILLIDAN_OPTION_DEMONFORM		= "Объявить форма демона/обычная"
DBM_ILLIDAN_OPTION_FLAMEBURST		= "Объявить Выброс пламени"
DBM_ILLIDAN_OPTION_SHADOWDEMONS		= "Объявить Темные демоны"
DBM_ILLIDAN_OPTION_EYEBEAMSOON		= "Показать предупреждение \"Скоро Взрыв глаза\""

DBM_ILLIDAN_YELL_PULL				= "Время пришло! Момент настал!"
DBM_ILLIDAN_YELL_EYEBEAM			= "Посмотри в глаза Предателя!"
DBM_ILLIDAN_YELL_DEMONFORM			= "Узрите мощь демона!"
DBM_ILLIDAN_YELL_PHASE4				= "Это все, смертные? Это и есть вся ваша ярость?"
DBM_ILLIDAN_MOB_FLAME				= "Пламя Аззинота"
DBM_ILLIDAN_SPELL_SHADOWDEMONS		= "Тенедемоны"
DBM_ILLIDAN_SPELL_SHEAR				= "Срез"
DBM_ILLIDAN_YELL_START				= "Акама! Твое двуличие меня не удивляет. Мне давным-давно стоило уничтожить тебя и твоих уродливых собратьев."

DBM_ILLIDAN_WARN_SHEAR				= ">%s< под воздействием эффекта Срез"
DBM_ILLIDAN_WARN_SHADOWFIEND		= ">%s< под воздействием эффекта Тенедемон"
DBM_ILLIDAN_WARN_BARRAGE			= ">%s< под воздействием эффекта Темное заграждение"
DBM_ILLIDAN_WARN_BARRAGE_SOON		= "Скоро Темное заграждение"
DBM_ILLIDAN_WARN_EYEBEAM			= "Взрыв глаза"
DBM_ILLIDAN_WARN_FLAMES				= "Пламенная боль на %s"
DBM_ILLIDAN_WARN_PHASE2				= "Фаза 2"
DBM_ILLIDAN_WARN_PHASE3				= "Фаза 3"
DBM_ILLIDAN_WARN_PHASE4				= "Фаза 4"
DBM_ILLIDAN_WARN_PHASE_DEMON		= "Фаза Демона"
DBM_ILLIDAN_WARN_FLAMEBURST			= "Выброс пламени #%s"
DBM_ILLIDAN_WARN_FLAMEBURST_SOON	= "Скоро Выброс пламени"
DBM_ILLIDAN_WARN_SHADOWDEMSSOON		= "Скоро Темные демоны"
DBM_ILLIDAN_WARN_SHADOWDEMS			= "Темные демоны"
DBM_ILLIDAN_WARN_NORMALPHASE_SOON	= "Обычная фаза через 10 секунд"
DBM_ILLIDAN_WARN_CASTSHEAR			= "Чтение заклинания Срез"
DBM_ILLIDAN_WARN_EYEBEAM_SOON		= "Скоро Взрыв глаза"
DBM_ILLIDAN_WARN_PHASE_NORMAL		= "Обычная фаза"
DBM_ILLIDAN_WARN_DEMONPHASE_SOON	= "Фаза Демона через 10 секунд"
DBM_ILLIDAN_WARN_SHADOWDEMSON		= "Темные демоны на %s"
DBM_ILLIDAN_STATUSMSG_PHASE2		= "Фаза 2"
DBM_ILLIDAN_WARN_PRISON				= "Темница Тьмы"
DBM_ILLIDAN_WARN_P4ENRAGE_SOON		= "Ярость через 5 секунд"
DBM_ILLIDAN_WARN_P4ENRAGE_NOW		= "Ярость"
DBM_ILLIDAN_WARN_CAGED				= "Заточение"

DBM_ILLIDAN_SELFWARN_SHADOWFIEND	= "Паразитирующий тенедемон"
DBM_ILLIDAN_SELFWARN_SHADOW			= "Пламенная боль"
DBM_ILLIDAN_SELFWARN_DEMONS			= "Темный демон"

DBM_SBT["Enrage2"]					= "Ярость" -- you cannot have two timers with the same id, so the 2nd enrage bar needs a "localization" 
DBM_SBT["Enrage"]				    = "Ярость";
DBM_SBT["Illidan Stormrage"]	    = "Иллидан Ярость Бури";
DBM_SBT["Next Dark Barrage"]	    = "Следующее Темное заграждение";
DBM_SBT["Demon Phase"]			    = "Фаза Демона";
DBM_SBT["Normal Phase"]			    = "Обычная фаза";
DBM_SBT["Shadow Demons"]		    = "Темные демоны";
DBM_SBT["Next Flame Burst"]		    = "Следующий Выброс пламени";
DBM_SBT["Shadow Prison"]		    = "Темница Тьмы";

DBM_SBT["Illidan"]					= {
		{
			"Shear: (.*)",
			"Срез: %1",
		},
		{
			"Shadowfiend: (.*)",
			"Тенедемон: %1",
		},
		{
			"Dark Barrage: (.*)",
			"Темное заграждение: %1",
		},
		{
			"Flames: (.*)",
			"Пламя: %1",
		},
	}
DBM_SBT["Иллидан Ярость Бури"] = DBM_SBT["Illidan"]
end
