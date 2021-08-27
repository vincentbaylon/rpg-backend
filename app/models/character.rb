class Character < ActiveRecord::Base
    has_many :skills
    has_many :scenes
    belongs_to :battle
    has_many :quest_lists
    has_many :quests, through: :quest_lists
end