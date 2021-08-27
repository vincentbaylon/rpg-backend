puts "🌱 Seeding spices..."

Battle.destroy_all
QuestList.destroy_all
Skill.destroy_all
Quest.destroy_all
Character.destroy_all
Mob.destroy_all

# Skills


# Mobs
drogon = Mob.create(name: 'Drogon', health: 100, attack: 100, defense: 15)
orgrim = Mob.create(name: 'Orgrim', health: 100, attack: 20)
hugon = Mob.create(name: 'Hugon', health: 100, attack: 20)
blacksmith = Mob.create(name: 'Blacksmith')

# Quests
Quest.create(name: 'start_quest', mob_id: drogon.id)
first_encounter = Quest.create(name: 'first_encounter', reward: 'revive')
troll_quest = Quest.create(name: 'troll_quest', mob_id: hugon.id)
orc_quest = Quest.create(name: 'orc_quest', reward: 'armor', mob_id: orgrim.id)
second_encounter = Quest.create(name: 'second_encounter')
armor_upgrade = Quest.create(name: 'armor_upgrade')
dragon_quest = Quest.create(name: 'dragon', reward: 'certificate', mob_id: drogon.id)

puts "✅ Done seeding!"
