#include "ScriptPCH.h"
#define GOSSIP_TEXT_TEST        500000
#define GOSSIP_XP_OFF_1           "Repar talentos"

class bug_dual : public CreatureScript
{
public:
	bug_dual() : CreatureScript("bug_dual") { }

	bool OnGossipHello(Player* player, Creature* creature)
	{


		//Check if player is new player
		if (player->getLevel() == 85)
		{
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_XP_OFF_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
			player->PlayerTalkClass->SendGossipMenu(GOSSIP_TEXT_TEST, creature->GetGUID());
		}
		//if (player->getLevel() == 9)
		//{
		//player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_XP_OFF_2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
		//player->PlayerTalkClass->SendGossipMenu(GOSSIP_TEXT_TEST, creature->GetGUID());
		//}
		//if (player->getLevel() == 10)
		//{
		//player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_XP_OFF_3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
		//player->PlayerTalkClass->SendGossipMenu(GOSSIP_TEXT_TEST, creature->GetGUID());
		//}
		return true;
	}

	bool OnGossipSelect(Player* player, Creature* /*creature*/, uint32 /*sender*/, uint32 action)
	{
		player->PlayerTalkClass->ClearMenus();
		switch (action)
		{
			// CASO I
		case GOSSIP_ACTION_INFO_DEF + 1:
		{

										   player->GiveLevel(9);
										   player->PlayerTalkClass->SendCloseGossip();
										   player->SaveToDB();
										   player->GiveLevel(10);
										   player->PlayerTalkClass->SendCloseGossip();
										   player->SaveToDB();
										   player->GiveLevel(85);
										   player->PlayerTalkClass->SendCloseGossip();
										   player->SaveToDB();
		};
			// CASO II
			//case GOSSIP_ACTION_INFO_DEF + 2:
			//{

			//player->GiveLevel(10);
			//player->PlayerTalkClass->SendCloseGossip();
			//player->SaveToDB();
			//};
			// CASO III
			//case GOSSIP_ACTION_INFO_DEF + 3:
			//{

			//player->GiveLevel(85);
			//player->PlayerTalkClass->SendCloseGossip();
			//player->SaveToDB();
			//};
		}
		return true;
	}
};

void AddSC_bug_dual()
{
	new bug_dual;
}
