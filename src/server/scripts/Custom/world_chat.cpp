#include "ScriptMgr.h"
#include "Cell.h"
#include "CellImpl.h"
#include "GameEventMgr.h"
#include "GridNotifiers.h"
#include "GridNotifiersImpl.h"
#include "Unit.h"
#include "GameObject.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "InstanceScript.h"
#include "CombatAI.h"
#include "PassiveAI.h"
#include "Chat.h"
#include "DBCStructure.h"
#include "DBCStores.h"
#include "ObjectMgr.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "Channel.h"
#include "Language.h"
#include "DBCStructure.h"
#include "InstanceScript.h"
#include "Map.h"
#include "MapManager.h"
#include "Group.h"
#include "GroupMgr.h"

#include "Config.h"
#include "WorldSession.h"
#include "Player.h"
#include "World.h"
#include "DatabaseEnv.h"
#define Playedtimetochat 1500
#define mutetimecencure 300
#define mutetimeantispam 10
#define FACTION_SPECIFIC 0


std::string GetNameLink(Player* player)
{
        std::string name = player->GetName();
        std::string color;
        switch(player->getClass())
        {
        case CLASS_DEATH_KNIGHT:
                color = "|cffC41F3B";
                break;
        case CLASS_DRUID:
                color = "|cffFF7D0A";
                break;
        case CLASS_HUNTER:
                color = "|cffABD473";
                break;
        case CLASS_MAGE:
                color = "|cff69CCF0";
                break;
        case CLASS_PALADIN:
                color = "|cffF58CBA";
                break;
        case CLASS_PRIEST:
                color = "|cffFFFFFF";
                break;
        case CLASS_ROGUE:
                color = "|cffFFF569";
                break;
        case CLASS_SHAMAN:
                color = "|cff0070DE";
                break;
        case CLASS_WARLOCK:
                color = "|cff9482C9";
                break;
        case CLASS_WARRIOR:
                color = "|cffC79C6E";
                break;
        }
        return "|Hplayer:"+name+"|h|cffFFFFFF["+color+name+"|cffFFFFFF]|h|r";
}
 
class world_chat : public CommandScript
{
        public:
        world_chat() : CommandScript("world_chat"){}

		static bool HandleWorldChatCommand(ChatHandler * pChat, const char * args)
		{
			if (!pChat->GetSession()->GetPlayer()->CanSpeak())
				return false;
			std::string temp = args;

			if (!args || temp.find_first_not_of(' ') == std::string::npos)
				return false;

			std::string msg = "";
			Player * player = pChat->GetSession()->GetPlayer();

			switch (player->GetSession()->GetSecurity())
			{
				// Player
			case SEC_PLAYER:
				if (player->GetTeam() == ALLIANCE)
				{
			msg += "|cff00ff00[Fire ";
			msg += "|cff0000ff|TInterface\\pvpframe\\pvp-currency-alliance:13|t|r] ";
			msg += GetNameLink(player);
			msg += ":|cff00ff00";
				}

				else
				{
			msg += "|cff00ff00[Fire ";
			msg += "|cffff0000|TInterface\\pvpframe\\pvp-currency-horde:13|t|r] ";
			msg += GetNameLink(player);
			msg += ": |cff00ff00";
				}
				break;
				// MODERATOR
			case SEC_MODERATOR:
				if (player->GetTeam() == ALLIANCE)
				{
					msg += "|TInterface\\icons\\Achievement_PVP_A_A:15|t|cffB70093|Alliance]|cffFFFFFF[Moderador] ";
					msg += GetNameLink(player);
					msg += " |cff0000FF";
				}
				
				else
				{
					msg += "|TInterface\\icons\\Achievement_PVP_H_H:15|t|cffB70093|Horde]|cffFFFFFF[Moderador] ";
					msg += GetNameLink(player);
					msg += " |cffFF0000";
				}
				break;
				// GM
			case SEC_GAMEMASTER:
				msg += "|TInterface\\icons\\Mail_GMIcon:15|t|cFF9932CC[GameMaster] ";
				msg += GetNameLink(player);
				msg += " |cff51FF59";
				break;
			    // Admin
			case SEC_ADMINISTRATOR:
				msg += "|TInterface\\icons\\Mail_GMIcon:15|t|cFF9932CC[Staff]|cff9B9B9B[Administrador] ";
				msg += GetNameLink(player);
				msg += " |cff1AFF25";
				break;
				
					case SEC_CONSOLE:   
		msg += "|TInterface\\icons\\Mail_GMIcon:15|t|cFF9932CC[Olympus ";
		msg += "|cff4fdeffOwner]";
		msg += GetNameLink(player);
		msg += ": |cff4fdeff";
		break;

			}

			msg += args;
			if (FACTION_SPECIFIC)
			{
				SessionMap sessions = sWorld->GetAllSessions();
				for (SessionMap::iterator itr = sessions.begin(); itr != sessions.end(); ++itr)
					if (Player* plr = itr->second->GetPlayer())
						if (plr->GetTeam() == player->GetTeam())
							sWorld->SendServerMessage(SERVER_MSG_STRING, msg.c_str(), plr);
			}
			else
				sWorld->SendServerMessage(SERVER_MSG_STRING, msg.c_str(), 0);

			return true;

		}
	std::vector<ChatCommand> GetCommands() const override
	{
		static std::vector<ChatCommand> HandleWorldChatCommandTable =
		{
			{ "world",  SEC_PLAYER,  true, &HandleWorldChatCommand, "" },
		};
		return HandleWorldChatCommandTable;
	}
};
 
void AddSC_world_chat()
{
        new world_chat();
}
