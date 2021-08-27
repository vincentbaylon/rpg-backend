puts "🌱 Seeding spices..."

Battle.destroy_all
QuestList.destroy_all
Skill.destroy_all
Quest.destroy_all
Character.destroy_all
Mob.destroy_all

# # Skills




# # Mobs
# drogon = Mob.create(name: 'Drogon', health: 100, attack: 100)
# orgrim = Mob.create(name: 'Orgrim', health: 75, attack: 25)
# hugon = Mob.create(name: 'Hugon', health: 50, attack: 10)
# blacksmith = Mob.create(name: 'Blacksmith')

# # Quests
# Quest.create(name: 'Dragon-Quest')





puts "✅ Done seeding!"
