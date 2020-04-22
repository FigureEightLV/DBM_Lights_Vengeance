-- ---------------------------------------- --
-- Deadly Boss Mods - russian localization  --
--                                          --
-- Translations by:                         --
--   LV|Nitram  -> EN                       --
--   LV|Tandanu -> DE                       --
--   LV|Tandanu -> fixed typos              --
--   LV|Bootwin -> RU                       --
-- ---------------------------------------- --

if (GetLocale() == "ruRU") then

--classes
DBM_MAGE		= "Маг";
DBM_PRIEST		= "Жрец" or "Жрица";
DBM_PALADIN		= "Паладин";
DBM_DRUID		= "Друид";
DBM_WARLOCK		= "Чернокнижник" or "Чернокнижница";
DBM_ROGUE		= "Разбойник" or "Разбойница";
DBM_HUNTER		= "Охотник" or "Охотница";
DBM_WARRIOR		= "Воин";
DBM_SHAMAN		= "Шаман" or "Шаманка";

--zones
DBM_NAXX			= "Наксрамас";
DBM_AQ40			= "Храм Ан'Киража";
DBM_BWL			    = "Логово Крыльев Тьмы";
DBM_MC				= "Огненные Недра";
DBM_AQ20			= "Руины Ан'Киража";
DBM_ZG 			    = "Зул'Гуруб";
DBM_ONYXIAS_LAIR	= "Логово Ониксии";
DBM_DUSKWOOD		= "Сумеречный лес";
DBM_ASHENVALE		= "Ясеневый лес";
DBM_FERALAS		    = "Фералас";
DBM_HINTERLANDS	    = "Внутренние земли";
DBM_BLASTED_LANDS	= "Выжженные земли";
DBM_AZSHARA		    = "Азшара";
DBM_HELLFIRE	    = "Полуостров Адского Пламени";
DBM_SHADOWMOON	    = "Долина Призрачной Луны";

DBM_BLACK_MORASS	= "Черные топи";

DBM_BATTLEGROUND	= "Поле боя";
DBM_BATTLEGROUNDS	= "Поля битвы";
DBM_ARATHI			= "Низина Арати";
DBM_WARSONG		    = "Ущелье Песни Войны";
DBM_ALTERAC		    = "Альтеракская долина";
DBM_EYEOFTHESTORM   = "Око Бури";
DBM_OTHER			= "Другие";

DBM_GRUULS_LAIR		= "Логово Груула";
DBM_MAGS_LAIR		= "Логово Магтеридона";

--spells/buffs
DBM_CHARGE			= "Рывок";
DBM_FERALCHARGE		= "Звериная атака";
DBM_BLOODRAGE		= "Кровопускание";
DBM_REDEMPTION 		= "Дух воздаяния";
DBM_FEIGNDEATH		= "Притвориться мертвым";
DBM_MINDCONTROL		= "Контроль над разумом";

--create status bar timer localization table
DBM_SBT = {};

--key bindings
BINDING_HEADER_DBM 		= "Deadly Boss Mod";
BINDING_NAME_DBMTOGGLE 	= "Включение или выключение GUI";

--OnLoad messages
DBM_LOADED			= "Deadly Boss Mod v%s Автор: DeadlyMinds|Tandanu @ EU-Aegwynn и La Vendetta|Nitram @ EU-Azshara loaded.";
DBM_MODS_LOADED		= "%s %s Boss Mod загружен."

--Slash command messages
DBM_MOD_ENABLED		    = "Boss Mod включен.";
DBM_MOD_DISABLED		= "Boss Mod выключен.";
DBM_ANNOUNCE_ENABLED	= "Объявление включено.";
DBM_ANNOUNCE_DISABLED	= "Объявление отключено.";
DBM_MOD_STOPPED		    = "Таймеры остановлены.";
DBM_MOD_INFO			= "Boss Mod v%s для %s";
DBM_SLASH_HELP1		    = " вкл/выкл";
DBM_SLASH_HELP2		    = " объявление вкл/выкл";
DBM_SLASH_HELP3		    = " остановлено";
DBM_SLASH_HELP4		    = "Можно использовать %s вместо /%s.";
DBM_RANGE_CHECK		    = "Более 30 метров: ";
DBM_FOUND_CLIENTS		= "Обнаружено %s игрока с установленным Deadly Boss Mod";

--Sync options
DBM_SOMEONE_SET_SYNC_CHANNEL	= "%s канал синхронизации задан для: %s";
DBM_SET_SYNC_CHANNEL		    = "Канал синхронизации для: %s";
DBM_CHANNEL_NOT_SET		        = "Канал не задано. Вещание не ведется.";
DBM_NEED_LEADER		            = "Для вещания в канале нужны права помощника или лидера";
DBM_NEED_LEADER_STOP_ALL	    = "Для использования этой функции необходимы права помощника или лидера!";
DBM_ALL_STOPPED		            = "Остановлено все таймеры.";
DBM_REC_STOP_ALL		        = "Остановлено все команды от %s.";

--Update dialog
DBM_UPDATE_DIALOG		= "Устаревшая версия Deadly Boss Mod!\n%s и %s получите версию %s.\nЗагрузить последнюю версию можно на веб-узле www.deadlybossmods.com.";
DBM_YOUR_VERSION_SUCKS	= "Устаревшая версия Deadly Boss Mod! Загрузить последнюю версию можно на веб-узле www.deadlybossmods.com.";
DBM_REQ_PATCHNOTES		= "Запрашивается информации об исправлениях у %s... Подождите.";
DBM_SHOW_PATCHNOTES		= "Показать сообщение";
DBM_PATCHNOTES			= "Об исправлениях";
DBM_COPY_PASTE_URL		= "Копировать/вставить";
DBM_COPY_PASTE_NOW		= "Нажмите клавиши Ctrl+C чтобы скопировать URL в буфер обмена";

--Status Bar Timers
DBM_SBT_TIMELEFT				= "Осталось времени:";
DBM_SBT_TIMEELAPSED			    = "Прошло времени:";
DBM_SBT_TOTALTIME				= "Общее время:";
DBM_SBT_REPETITIONS			    = "Повторения:";
DBM_SBT_INFINITE				= "бесконечно";
DBM_SBT_BOSSMOD				    = "Boss Mod:";
DBM_SBT_STARTEDBY				= "Запущен:";
DBM_SBT_RIGHTCLICK				= "Щелкните правой кнопкой по полосе, чтобы скрыть";
DBM_SBT_LEFTCLICK				= "Shift + левый щелчок по полосе для объявления";
DBM_TIMER_IS_ABOUT_TO_EXPIRE	= "Таймер \"%s\" скоро истекает!";
DBM_BAR_STYLE_DEFAULT			= "Стандартный";
DBM_BAR_STYLE_MODERN			= "Современный";
DBM_BAR_STYLE_CLOUDS			= "Облака";
DBM_BAR_STYLE_PERL				= "Перл";


--Combat messages
DBM_BOSS_ENGAGED			= "%s спуллен. Удачного лута! :)";
DBM_BOSS_SYNCED_BY			= "(получена синхронизация от %s)";
DBM_BOSS_DOWN				= "%s убит за %s!";
DBM_COMBAT_ENDED			= "Бой окончен после %s.";
DBM_DEFAULT_BUSY_MSG		= "%P занят. (В бою с %B - %HP - %ALIVE/%RAID живых игроков.) О результатах боя будет сообщено после.";
DBM_RAID_STATUS_WHISPER		= "%B - %HP - %ALIVE/%RAID живых игроков.";
DBM_SEND_STATUS_INFO		= "Шепотом \"status\" на запрос состояния рейда.";
DBM_AUTO_RESPOND_SHORT		= "Автоответ.";
DBM_AUTO_RESPOND_LONG		= "Автоответ на обращение шепотом от %s";
DBM_MISSED_WHISPERS			= "Пропущено обращение шепотом в бою:";
DBM_SHOW_MISSED_WHISPER		= "|Hplayer:%1\$s|h[%1\$s]|h: %2\$s";
DBM_BALCONY_PHASE			= "Балкон - фаза #%s";

--Misc stuff
DBM_YOU					= "Вы";
DBM_ARE					= "";
DBM_IS					= "-";
DBM_OR					= "или";
DBM_AND					= "и";
DBM_UNKNOWN			 	= "неизвестно";
DBM_LOCAL				= "локально";
DBM_DEFAULT_DESCRIPTION	= "Описание недоступно.";
DBM_SEC					= "сек.";
DBM_MIN					= "мин.";
DBM_SECOND				= "секунда";
DBM_SECONDS				= "секунд";
DBM_MINUTES				= "минут";
DBM_MINUTE				= "минута";
DBM_HIT					= "удар";
DBM_HITS				= "удары";
DBM_CRIT				= "критический";
DBM_CRITS				= "критические";
DBM_MISS				= "промах";
DBM_DODGE				= "уклонение";
DBM_PARRY				= "парирование";
DBM_FROST				= "Лед";
DBM_ARCANE				= "Тайна";
DBM_FIRE				= "Огонь";
DBM_HOLY				= "Свет";
DBM_NATURE				= "Природа";
DBM_SHADOW				= "Темная";
DBM_CLOSE				= "Закрыть";
DBM_AGGRO_FROM			= "Агрессивность от";
DBM_SET_ICON			= "Значок";
DBM_SEND_WHISPER		= "Шепотом";
DBM_DEAD				= "Мертвый";
DBM_OFFLINE				= "Нет в игре";
DBM_PHASE				= "Фаза %s";
DBM_WAVE				= "Волна %s";


-- Added 11.11.06
DBM_NOGUI_ERROR			= "Пожалуйста, активируйте DBM GUI для доступа к этой функции";
DBM_NOSYNCBARS			= "В настоящее время полосы отсутствуют";




-- Added 1.12.06

DBM_LEFT	= "слева";
DBM_RIGHT	= "справа";

DBM_GUI_COMBATLOG_RANGE_TITLE      = "Диапазон Боевого журнала";
DBM_GUI_COMBATLOG_MIN_RANGE        = "Установлено минимальный диапазон";
DBM_GUI_COMBATLOG_MAX_RANGE        = "Установлено максимальный диапазон";
DBM_GUI_COMBATLOG_LONG_RANGE       = "Установлено полный диапазон";
DBM_GUI_COMBATLOG_DEFAULT_RANGE    = "Установлено диапазон по умолчанию";

DBMGUI_DISTANCE_FRAME_TITLE		= "Расстояние";
DBMGUI_DISTANCE_FRAME_TEXT		= "Слишком близко:";
DBMGUI_DISTANCE_FRAME_TEXT_15YD	= "Очень близко (15 метров):";

DBMGUI_INFOFRAME_TOOLTIP_TITLE		= "Информация";
DBMGUI_INFOFRAME_TOOLTIP_TEXT		= "Щелчок правой кнопкой для перемещения\nShift + правый щелчок для скрытия";

DBMGUI_STATUSBAR_WIDTH_SLIDER		= "Ширина";
DBMGUI_STATUSBAR_SCALE_SLIDER		= "Масштаб";

DBMGUI_BUTTON_RANGECHECK		    = "Диапазон";
DBMGUI_TOOLTIP_RANGECHECK_TITLE	    = "Контрольное окно придельного диапазона";
DBMGUI_TOOLTIP_RANGECHECK_TEXT		= "Отображение или скрытие контрольного окна границ диапазона, в котором показаны все игроки, находящиеся более чем за 30 метров от вас.";

DBMGUI_BUTTON_DISTANCEFRAME		    = "Дистанция";
DBMGUI_TOOLTIP_DISTANCEFRAME_TITLE	= "Контрольное окно придельной дистанции";
DBMGUI_TOOLTIP_DISTANCEFRAME_TEXT	= "Отображение или скрытие контрольного окна границ дистанции, в котором показаны все игроки, находящиеся слишком близкий к вам (10 метров). Помогает при сражении с К'Тун или Принцессой Хухуран.";


-- Added 2.12.06

DBM_NAME			= "Имя";
DBM_DURABILITY		= "Прочность";

DBM_LOAD_GUI_ERROR_FORMAT	= "Ошибка при загрузке GUI: %s";
DBM_LOAD_GUI_ERROR_UNKNOWN	= "Неизвестная ошибка при загрузке GUI.";

-- Added 9.12.06

DBM_ERROR_INVALID_MODID	    = "ОШИБКА: ID модуля должна быть строка!";
DBM_ERROR_MODID_EXISTS		= "ОШИБКА: модуль с ID '%s' уже существует!";

-- Added 11.12.06
DBM_COMBAT_TABLE_WARNING	= "ПРЕДУПРЕЖДЕНИЕ: модуль DBM с этим ID уже зарегистрирован, обновите информацию..."

-- Added 13.12.06
DBM_TIMER_SLASHCMD_HELP1	= "/dbm timer <time> <text>  -  запускает таймер";
DBM_TIMER_SLASHCMD_HELP2	= "/dbm broadcast timer <time> <text>  -  транслирует таймер";

-- Added 20.12.06
DBM_HORDE		= "Орда";
DBM_ALLIANCE	= "Альянс";

-- Added 22.12.06
DBM_ENABLED_GREEN	= GREEN_FONT_COLOR_CODE.."включено"..FONT_COLOR_CODE_CLOSE;
DBM_DISABLED_RED	= RED_FONT_COLOR_CODE.."отключено"..FONT_COLOR_CODE_CLOSE;
DBM_ERROR			= "Ошибка";


-- 2.1.07
DBM_UPGRADE			= "обновление";
DBM_BAR_STYLE_GLAZE = "Глазурь";

-- 9.1.07
DBM_BOSS_MOD_LOADED	= "Загружен Deadly Boss Mod для '%s'!";

DBM_MISC			= "смешанный";

DBMGUI_TAB_NAXX_TEXT	= "Накс";
DBMGUI_TAB_AQ40_TEXT	= "АК40";
DBMGUI_TAB_BWL_TEXT		= "ЛКТ";
DBMGUI_TAB_MC_TEXT		= "ОН";
DBMGUI_TAB_OTHER_TEXT	= "Другой";
DBMGUI_TAB_AQ20_TEXT	= "АК20";
DBMGUI_TAB_ZG_TEXT		= "ЗГ";
DBMGUI_TAB_BG_TEXT		= "БТ"

DBMGUI_TAB_1_TITLE_TEXT		= "Действия главарей Наксрамаса";
DBMGUI_TAB_2_TITLE_TEXT		= "Действия главарей храма Ан'Киража";
DBMGUI_TAB_3_TITLE_TEXT		= "Действия главарей логова Крыла Тьмы";
DBMGUI_TAB_4_TITLE_TEXT		= "Действия главарей Огненных Недр";
DBMGUI_TAB_6_TITLE_TEXT		= "Действия других главарей";
DBMGUI_TAB_ZG_TITLE_TEXT	= "Действия главарей Зул'Гуруба";
DBMGUI_TAB_AQ20_TITLE_TEXT	= "Действия главарей руин Ан'Киража";
DBMGUI_TAB_BG_TITLE_TEXT	= "Поля битвы";

-- 10.1.07
-- outdoor boss names for load on demand
DBM_OUTDOOR_YSONDRE		= "Исондра";
DBM_OUTDOOR_EMERISS		= "Эмерисс";
DBM_OUTDOOR_TAERAR		= "Таэрар";
DBM_OUTDOOR_LETHON		= "Летон";
DBM_AZUREGOS_NAME		= "Азурегоса";
DBM_KAZZAK_NAME			= "Владыка Судеб Каззак";
DBM_DOOMW_NAME			= "Судьболом";

DBM_ERROR_LVBM_STILL_LOADED	= "Вы не удалили старые папки, работает две версии DBM!\nНажмите кнопку \"ОК\" чтобы отключить старую версию и перезагрузить интерфейс.\nВам не ненужно будет удалять папку после этого действия.";
DBM_DISABLE_AND_RELOAD		= "ОК";

-- event abstraction layer
DBM_EAL_MOBCASTSTART_EXPR	= "(.+) начинает %w+ (.+)%.";
DBM_EAL_MOBCAST_EXPR		= "(.+) читает заклинание (.+)%.";
DBM_EAL_DEBUFF_EXPR			= "([^%s]+) %w+ поражен болезнью (.+)%.";
DBM_EAL_MOB_BUFF_EXPR		= "(.+) получает (.+)%.";
DBM_EAL_MOBDEAD_EXPR		= "(.+) умирает%.";



--20.2.07
DBM_MSG_CLEANICONS = "Значки рейда удалены!";

--18.3.07
DBM_HEAVY_NW_BANDAGE = "Плотные бинты из ткани Пустоты";
DBM_RANGE_FRAME_BANDAGE_MISSING	= "Ошибка при установке контрольных границ на 15 метров. Убедитесь, что у вас при себе Плотные бинты из ткани Пустоты."


-- copied from "drt"

DRT_SPAMBLOCK_SLASHHELP	= {
	"/dbm spamblock Raid on||off (%s)",
	"/dbm spamblock RaidWarning on||off (%s)",
	"/dbm spamblock RaidWarningFrame on||off (%s)",
	"/dbm spamblock CTRaid on||off (%s)",
	"/dbm spamblock Battleground on||off (%s)",
};

DRT_PULLCOMMAND_ANNOUNCE	= "*** Приготовьтесь к Атаке ***";
DRT_PULLCOMMAND_SELFWARN	= "АТАКА";
DRT_PULLCOMMAND_PREWARN		= "*** Атака через %d сек. ***";
DRT_PULLCOMMAND_FAILED		= "Используйте команду /dbm pull 10";
DBM_SBT["Incoming Pull"]    = "Приготовьтесь к Атаке";

DRT_INVITE_NOPERMISSION	    = "Для использования этой функции необходимы права помощника или лидера.";
DRT_SPAMBLOCK_OPTION_SET	= "Параметры настройки SpamBlock \"%s\" для \"%s\"";

-- 28.4.07
DBM_REQUEST_BARS_FROM	= "Запрос полос у %s...";
DBM_REQUEST_BARS_FAILED	= "Ошибка: таймеру системы восстановление требуется хотя бы один игрока рейдовой группы с установленной версией 2.60 или выше.";

-- 20.9.07
DBM_GENERIC_ENRAGE_WARN	= "Ярость через %s %s"

-- 6.10.07
DBM_GENERIC_PHASE_MSG		= "Фаза %s"
DBM_GENERIC_PHASE_MSG2		= "%s фаза"

DBM_HP_UNKNOWN				= "ЗД неизвестно"

DBMGUI_OPTIONS_BAR_TARGET	= "<цель>"


DBM_NO_TARGET				= "<нет цели>"
end