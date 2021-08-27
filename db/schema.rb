# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_25_042035) do

  create_table "battles", force: :cascade do |t|
    t.integer "character_id"
    t.integer "mob_id"
    t.index ["character_id"], name: "index_battles_on_character_id"
    t.index ["mob_id"], name: "index_battles_on_mob_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "health", default: 100
    t.integer "attack", default: 25
    t.integer "defense", default: 0
    t.boolean "on_quest", default: false
    t.boolean "in_battle", default: false
    t.boolean "turn", default: false
  end

  create_table "mobs", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "health"
    t.integer "attack"
    t.integer "defense"
    t.boolean "turn"
    t.boolean "in_battle"
  end

  create_table "quest_lists", force: :cascade do |t|
    t.integer "character_id"
    t.integer "quest_id"
    t.index ["character_id"], name: "index_quest_lists_on_character_id"
    t.index ["quest_id"], name: "index_quest_lists_on_quest_id"
  end

  create_table "quests", force: :cascade do |t|
    t.string "name"
    t.string "reward"
    t.string "image"
    t.string "reward_image"
    t.integer "mob_id"
    t.index ["mob_id"], name: "index_quests_on_mob_id"
  end

  create_table "scenes", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "character_id"
    t.index ["character_id"], name: "index_scenes_on_character_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.integer "damage"
    t.integer "character_id"
    t.integer "mob_id"
    t.index ["character_id"], name: "index_skills_on_character_id"
    t.index ["mob_id"], name: "index_skills_on_mob_id"
  end

  add_foreign_key "battles", "characters"
  add_foreign_key "battles", "mobs"
  add_foreign_key "quest_lists", "characters"
  add_foreign_key "quest_lists", "quests"
  add_foreign_key "quests", "mobs"
  add_foreign_key "scenes", "characters"
  add_foreign_key "skills", "characters"
  add_foreign_key "skills", "mobs"
end
