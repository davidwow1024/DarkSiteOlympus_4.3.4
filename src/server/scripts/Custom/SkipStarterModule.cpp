/// Game
#include "Chat.h"
#include "Creature.h"
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "Config.h"

class skip_StarterArea : public CreatureScript
{
    public:
        skip_StarterArea() : CreatureScript("skip_StarterArea") { }

        enum eActions
        {
            ActionBoostTo20 = 1,
        };

        bool OnGossipHello(Player* p_Player, Creature* p_Creature) override
        {
            p_Player->ADD_GOSSIP_ITEM(0, "Deseo saltarme la linea de misiones de inicio del Caballero de la Muerte.", 0, eActions::ActionBoostTo20);
            p_Player->SEND_GOSSIP_MENU(p_Creature->GetEntry(), p_Creature->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* p_Player, Creature* p_Creature, uint32 /*p_Sender*/, uint32 p_Action) override
        {
            p_Player->CLOSE_GOSSIP_MENU();

            ///if (p_Action == eActions::ActionBoostTo20)
            {                
                p_Player->GiveLevel(60);

                ChrClassesEntry const* classEntry = sChrClassesStore.LookupEntry(p_Player->getClass());
                if (!classEntry)
                    return true;

                uint32 family = classEntry->spellfamily;

                for (uint32 i = 0; i < sSkillLineAbilityStore.GetNumRows(); ++i)
                {
                    SkillLineAbilityEntry const* entry = sSkillLineAbilityStore.LookupEntry(i);
                    if (!entry)
                        continue;

                    SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(entry->spellId);
                    if (!spellInfo)
                        continue;

                    // skip server-side/triggered spells
                    if (spellInfo->SpellLevel == 0)
                        continue;

                    // skip wrong class/race skills
                    if (!p_Player->IsSpellFitByClassAndRace(spellInfo->Id))
                        continue;

                    // skip other spell families
                    if (spellInfo->SpellFamilyName != family)
                        continue;

                    // skip spells with first rank learned as talent (and all talents then also)
                    uint32 firstRank = sSpellMgr->GetFirstSpellInChain(spellInfo->Id);
                    if (GetTalentSpellCost(firstRank) > 0)
                        continue;

                    // skip broken spells
                    if (!SpellMgr::IsSpellValid(spellInfo, p_Player, false))
                        continue;

                    if (spellInfo->SpellLevel > p_Player->getLevel())
                        continue;

                    p_Player->learnSpell(spellInfo->Id, false);
                }
                                

                p_Player->StoreNewItemInBestSlots(22243, 4);

                switch (p_Player->getClass())
                {
                    case CLASS_DEATH_KNIGHT:
                        p_Player->learnSpell(53428, false);//runeforging
                        p_Player->learnSpell(53441, false);//runeforging
                        p_Player->learnSpell(53344, false);//runeforging
                        p_Player->learnSpell(62158, false);//runeforging
                        p_Player->learnSpell(33391, false);//journeyman riding
                        p_Player->learnSpell(54586, false);//runeforging credit
                        p_Player->learnSpell(48778, false);//acherus deathcharger
                        p_Player->learnSpell(86524, false);//
                        p_Player->learnSpell(34090, false);//
                        p_Player->learnSpell(90267, false);//
                        p_Player->learnSkillRewardedSpells(776, 375);//Runeforging
                        p_Player->learnSkillRewardedSpells(960, 375);//Runeforging
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_HEAD, 38661, true);//Greathelm of the Scourge Champion
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_WRISTS, 38666, true);//Plated Saronite Bracers
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_WAIST, 38668, true);//The Plaguebringer's Girdle
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_HANDS, 38667, true);//Bloodbane's Gauntlets of Command
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_CHEST, 38665, true);//Saronite War Plate
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_LEGS, 38669, true);//Engraved Saronite Legplates
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_SHOULDERS, 38663, true);// Blood-Soaked Saronite Plated Spaulders
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_FEET, 38670, true);//Greaves of the Slaughter
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_TRINKET1, 40483, true);//Signet of the Dark Brotherhood
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_TRINKET2, 38674, true);//Soul Harvester's Charm
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_FINGER1, 38671, true);//Valanar's Signet Ring
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_FINGER2, 38672, true);// Keleseth's Signet Ring
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_MAINHAND, 38632, true);// Greatsword of the Ebon Blade
                        p_Player->EquipNewItem(EQUIPMENT_SLOT_OFFHAND, 39208, true);// 
                        p_Player->AddItem(39320, true);//Sky Darkener's Shroud of Blood
                        p_Player->AddItem(38664, true);//Sky Darkener's Shroud of the Unholy
                        p_Player->AddItem(39322, true);//Shroud of the North Wind
                        p_Player->AddItem(6948, true);//Hearthstone
                        p_Player->AddItem(38707, true);//Runed Soulblade
                        p_Player->AddItem(38675, true);//Signet of the Dark Brotherhood

                        if (p_Player->GetQuestStatus(12657) == QUEST_STATUS_NONE)//The Might Of The Scourge
                        {
                            p_Player->AddQuest(sObjectMgr->GetQuestTemplate(12657), nullptr);
                            p_Player->RewardQuest(sObjectMgr->GetQuestTemplate(12657), false, p_Player);
                        }
                        if (p_Player->GetQuestStatus(12801) == QUEST_STATUS_NONE)//The Light of Dawn
                        {
                            p_Player->AddQuest(sObjectMgr->GetQuestTemplate(12801), nullptr);
                            p_Player->RewardQuest(sObjectMgr->GetQuestTemplate(12801), false, p_Player);
                        }
                        if (p_Player->GetTeam() == ALLIANCE && p_Player->GetQuestStatus(13188) == QUEST_STATUS_NONE)//Where Kings Walk
                        {
                            p_Player->AddQuest(sObjectMgr->GetQuestTemplate(13188), nullptr);
                            p_Player->RewardQuest(sObjectMgr->GetQuestTemplate(13188), false, p_Player);
                        }
                        else if (p_Player->GetTeam() == HORDE && p_Player->GetQuestStatus(13189) == QUEST_STATUS_NONE)//Saurfang's Blessing
                        {
                            p_Player->AddQuest(sObjectMgr->GetQuestTemplate(13189), nullptr);
                            p_Player->RewardQuest(sObjectMgr->GetQuestTemplate(13189), false, p_Player);
                        }
                        break;
                }
            }

            p_Player->SendTalentsInfoData(false);

            if (p_Player->GetTeamId() == TEAM_ALLIANCE)
            {
                p_Player->TeleportTo(0, -8833.379883f, 628.627991f, 94.006599f, 1.065350f);

                if (p_Player->getLevel() == 1)
                    p_Player->SetHomebind(WorldLocation(0, -8833.379883f, 628.627991f, 94.006599f, 1.065350f), 5170);
            }
            else
            {
                p_Player->TeleportTo(1, 1568.300049f, -4399.930176f, 16.168900f, 0.239387f);

                if (p_Player->getLevel() == 1)
                    p_Player->SetHomebind(WorldLocation(1, 1568.300049f, -4399.930176f, 16.168900f, 0.239387f), 5170);
            }

            p_Player->ModifyMoney(500000);

            return true;
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
        		
	};

	CreatureAI * GetAI(Creature * pCreature) const
	{
		return new gambler_passivesAI(pCreature);
	}		
};

void AddSC_skip_StarterArea()
{
    new skip_StarterArea();
}