#include "ScriptPCH.h"
#include "Config.h"

class npc_teleport : public CreatureScript
{
public:
    npc_teleport() : CreatureScript("npc_teleport") {}
    
    long long int money;
    int costo;
    
    bool OnGossipHello(Player* player, Creature* _Creature)
	{
        if( player->GetTeam() == ALLIANCE )
        {
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Achievement_Zone_Darnassus:35:35|t|cff0000ffDarnassus"                     , GOSSIP_SENDER_MAIN, 1203);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Spell_Arcane_TeleportExodar:35:35|t|cff0000ffExodar"                        , GOSSIP_SENDER_MAIN, 1216);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Spell_Arcane_Portalstormwind:35:35|t|cff0000ffVentormenta"                     , GOSSIP_SENDER_MAIN, 1206);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Achievement_Zone_Ironforge:35:35|t|cff0000ffForjaz"                     , GOSSIP_SENDER_MAIN, 1224);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Spell_Arcane_TeleportShattrath:35:35|t|cff00ff00Shattrath"                , GOSSIP_SENDER_MAIN, 1287);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Spell_Arcane_TeleportDalaran:35:35|t|cff00ff00Dalaran"                       , GOSSIP_SENDER_MAIN, 1205);
			player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Ability_DualWieldSpecialization:35:35|t|cFF9932CC Zona de Duelos "                       , GOSSIP_SENDER_MAIN, 1330);
            player->ADD_GOSSIP_ITEM( 7, "|TInterface/ICONS/Achievement_zone_firelands:35:35|t Mazmorras"                       , GOSSIP_SENDER_MAIN, 1207);
            player->ADD_GOSSIP_ITEM( 7, "|TInterface/ICONS/Achievement_dungeon_gloryoftheraider:35:35|t Bandas"               , GOSSIP_SENDER_MAIN, 5550);
        }
        else
        {
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Spell_Arcane_PortalOrgrimmar:35:35|t|cffff0000Orgrimmar"                     , GOSSIP_SENDER_MAIN, 1215);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Spell_Arcane_TeleportSilvermoon:35:35|t|cffff0000Lunargenta"                    , GOSSIP_SENDER_MAIN, 1217);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Spell_Arcane_PortalUndercity:35:35|t|cffff0000Entrañas"                     , GOSSIP_SENDER_MAIN, 1213);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Spell_Arcane_PortalThunderBluff:35:35|t|cffff0000Cima del trueno"                 , GOSSIP_SENDER_MAIN, 1225);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Spell_Arcane_TeleportShattrath:35:35|t|cff00ff00Shattrath"                , GOSSIP_SENDER_MAIN, 1287);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Spell_Arcane_TeleportDalaran:35:35|t|cff00ff00Dalaran"                       , GOSSIP_SENDER_MAIN, 1205);
			player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Ability_DualWieldSpecialization:35:35|t|cFF9932CC Zona de Duelos "                       , GOSSIP_SENDER_MAIN, 1330);
            player->ADD_GOSSIP_ITEM( 7, "|TInterface/ICONS/Achievement_zone_firelands:35:35|t Mazmorras"                       , GOSSIP_SENDER_MAIN, 1207);
            player->ADD_GOSSIP_ITEM( 7, "|TInterface/ICONS/Achievement_dungeon_gloryoftheraider:35:35|t Bandas"               , GOSSIP_SENDER_MAIN, 5550);
        }
        player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());
        return true;
    }
    
    bool OnGossipSelect(Player* player, Creature* _Creature, uint32 sender, uint32 action)
	{
        player->PlayerTalkClass->ClearMenus();
        if (sender == GOSSIP_SENDER_MAIN)
            SendDefaultMenu_npc_teleport(player, _Creature, action);
        return true;
    }
    
    void SendDefaultMenu_npc_teleport(Player *player, Creature *_Creature, uint32 action )
    {
        if(!player->getAttackers().empty())
        {
            player->CLOSE_GOSSIP_MENU();
            _Creature->MonsterSay("You are in combat!", LANG_UNIVERSAL, NULL);
            return;
        }

        switch(action)
        {
		case 1207: //Mazmorras
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Inv_misc_bandana_03:35:35|t  Minas de la Muerte"              , GOSSIP_SENDER_MAIN, 1300);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Achievement_boss_infinitecorruptor:35:35|t  Fin de los Dias"              , GOSSIP_SENDER_MAIN, 1301);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Achievement_dungeon_grimbatol:35:35|t  Grim Batol"                    , GOSSIP_SENDER_MAIN, 1302);
			player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Spell_frost_windwalkon:35:35|t  Camaras de los Origenes"              , GOSSIP_SENDER_MAIN, 1303);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Achievment_raid_houroftwilight:35:35|t  Hora del Crepusculo"              , GOSSIP_SENDER_MAIN, 1304);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Ability_mount_camel_tan:35:35|t  Ciudad Perdida de los Tol'vir"              , GOSSIP_SENDER_MAIN, 1305);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Inv_helm_robe_dungeonrobe_c_04:35:35|t  Castillo de Colmillo Oscuro"              , GOSSIP_SENDER_MAIN, 1306);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Achievement_dungeon_deepholm:35:35|t  El Nucleo Petreo"              , GOSSIP_SENDER_MAIN, 1307);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Achievement_dungeon_skywall:35:35|t  La Cumbre del Vortice"              , GOSSIP_SENDER_MAIN, 1308);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Ability_mage_netherwindpresence:35:35|t  Trono de las Mareas"              , GOSSIP_SENDER_MAIN, 1309);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Achievment_boss_wellofeternity:35:35|t  Pozo de la Eternidad"              , GOSSIP_SENDER_MAIN, 1310);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Achievement_zul_aman_daakara:35:35|t  Zul' Aman"              , GOSSIP_SENDER_MAIN, 1311);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Achievement_boss_hakkar:35:35|t  Zul' Gurub"              , GOSSIP_SENDER_MAIN, 1312);
			player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Spell_Frost_FireResistanceTotem:35:35|t  Caverna Roca Negra"              , GOSSIP_SENDER_MAIN, 1313);
            player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());
            break;	
        case 5550: //Bandas
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Achievment_boss_madnessofdeathwing:35:35|t Alma de Dragon"              , GOSSIP_SENDER_MAIN, 1248);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Achievement_boss_lordanthricyst:35:35|t Tierras de Fuego."              , GOSSIP_SENDER_MAIN, 1249);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/achievement_zone_tolbarad:35:35|t Bastion de Baradin"                    , GOSSIP_SENDER_MAIN, 1250);
			player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/achievement_reputation_ogre:35:35|t El bastion del Crepusculo"              , GOSSIP_SENDER_MAIN, 1251);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/achievement_boss_nefarion:35:35|t Descenso de Alanegra"              , GOSSIP_SENDER_MAIN, 1252);
            player->ADD_GOSSIP_ITEM( 5, "|TInterface/ICONS/Ability_mage_netherwindpresence:35:35|t|cffff0000 Trono de los Cuatro Vientos "              , GOSSIP_SENDER_MAIN, 1253);
            player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,_Creature->GetGUID());
            break;
        case 1203: // Teleport to Darnassus
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(1, 9947.52f, 2482.73f, 1316.21f, 0.0f);
            break;
        case 1204: // Teleport to Transmogrification
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(530, -540.401f, 6875.22f, 163.15f, 0.0f);
            break;
        case 1206: // Teleport to Stormwind
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(0, -8960.14f, 516.266f, 96.3568f, 0.0f);
            break;
        case 1205: // Teleport to Dalaran
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(571, 5804.14f, 624.770f, 647.7670f, 1.64f);
            break;
        case 1213: // Teleport to Undercity
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(0, 1819.71f, 238.79f, 60.5321f, 0.0f);
            break;
        case 1215: // Teleport to Orgrimmar
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(1, 1552.5f, -4420.66f, 8.94802f, 0.0f);
            break;
        case 1216: // Teleport to Exodar
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(530, -4170.330f, -12491.03f,  44.21f, 0.0f);
            break;
        case 1217: // Teleport to Silvermoon
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(530, 9338.74f, -7277.27f, 13.7895f, 0.0f);
            break;
        case 1222: //Teleport to Gnomeregan
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(0, -5163.43f,660.40f,348.28f,4.65f);
            break;
        case 1224: // Teleport to Ironforge
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(0, -4924.07f, -951.95f, 501.55f, 5.40f);
            break;
        case 1225: // Teleport to Thunder Bluff
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(1, -1586.59f, 172.33f, -7.32f, 0.0f);
            break;
            // Shattrath City
        case 1287:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(530, -1850.209961f, 5435.821777f, -10.961435f, 0.0f);
            break;
            // Alma de Dragon
        case 1248:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(1, -8289.11f, -4525.5f, -219.763f, 0.358896f);
            break;
            // Firelands
        case 1249:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(1, 3992.71f, -2960.73f, 1002.55f, 2.11884f);
            break;
            // Bastion Baradin
        case 1250:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(732, -1262.09f, 1049.36f, 106.996f, 3.1918f);
            break;
            // The Bastion of Twilight
        case 1251:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(0, -4887.24f, -4251.23f, 827.763f, 2.1767f);
            break;
            // Blackwing Descent
        case 1252:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(0, -7538.13f, -1200.43f, 477.72f, 2.00286f);
            break;
            // Cumbre de los 4 vientos
        case 1253:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(1, -11355.0f, 58.1568f,  723.883f, 0.0f);
            break;
			 // Deadmines
        case 1300:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(0, -11208.1f, 1671.55f,  24.6908f, 1.54879f);
            break;
			 // End Time
        case 1301:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(1, -8296.0f, -4458.0f,  -207.0f, 0.1f);
            break;
			 // Grim Batol
        case 1302:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(0, -4062.0f, -3450.0f, 281.0f, 0.39f);
            break;
			 // Halls of Origination
        case 1303:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(1, -10183.0f, -2021.0f,  51.0f, 1.58f);
            break;
			 //  Hour of Twilight
        case 1304:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(1, -8291.0f, -4571.0f,  -223.0f, 4.9f);
            break;
			 // Lost City of the Tol'vir
        case 1305:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(1, -10668.0f, -1303.0f,  16.0f, 3.39f);
            break;
			 // Shadowfang Keep
        case 1306:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(0, -234.6f, 1561.6f,  78.0f, 1.24f);
            break;
			 // The Stonecore
        case 1307:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(646, 1025.5f, 637.0f,  158.0f, 4.94f);
            break;
			 // The Vortex Pinnacle
        case 1308:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(1, -11500.0f, -2300.0f,  608.0f, 3.7f);
            break;
			 // Throne of the Tides
        case 1309:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(0, -5599.089844f, 5412.060059f,  -1798.733887f, 5.597193f);
            break;
			 // Well of Eternity
        case 1310:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(1, -8598.0f, -4049.0f,  -206.0f, 1.49f);
            break;
			 // Zul' Aman
        case 1311:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(530, 6851.0f, -7970.0f,  179.0f, 4.73f);
            break;
			 // Zul' Gurub
        case 1312:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(0, -11916.0f,-1209.0f,  93.0f, 4.71f);
            break;
			// Caverna ROca Negra
        case 1313:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(0, -7570.947266f,-1325.899658f,  245.537994f, 4.799234f);
            break;
			 // Zona duelos
        case 1330:
            player->CLOSE_GOSSIP_MENU();
            player->TeleportTo(0, 4304.1f,-2759.04f,  17.1511f, 3.68752f);
            break;
        }
    }

	struct gambler_passivesAI : public ScriptedAI
	{
		gambler_passivesAI(Creature * c) : ScriptedAI(c){ }

		uint32 uiAdATimer;
		uint32 uiAdBTimer;
		uint32 uiAdCTimer;

		void Reset()
		{
			uiAdATimer = 1000;
			uiAdBTimer = 23000;
			uiAdCTimer = 11000;
		}


		void UpdateAI(const uint32 diff)
		{

			if (uiAdATimer <= diff)
			{
				me->MonsterSay("¡Hola Viajero.!", LANG_UNIVERSAL, NULL);
				me->HandleEmoteCommand(EMOTE_ONESHOT_EXCLAMATION);
				me->CastSpell(me, 44940);
				uiAdATimer = 122000;
			}
			else
				uiAdATimer -= diff;

			if (uiAdBTimer <= diff)
			{
				me->MonsterSay("Con migo podras viajar por diferentes lugares", LANG_UNIVERSAL, NULL);
				me->HandleEmoteCommand(EMOTE_ONESHOT_EXCLAMATION);
				uiAdBTimer = 122000;
			}
			else
				uiAdBTimer -= diff;

			if (uiAdCTimer <= diff)
			{
				me->MonsterSay("Ansio tu llegada!", LANG_UNIVERSAL, NULL);
				me->HandleEmoteCommand(EMOTE_ONESHOT_EXCLAMATION);
				uiAdCTimer = 122000;
			}
			else
				uiAdCTimer -= diff;
		}
	};

	CreatureAI * GetAI(Creature * pCreature) const
	{
		return new gambler_passivesAI(pCreature);
	}
};

void AddSC_npc_teleport()
{
new npc_teleport();
}
