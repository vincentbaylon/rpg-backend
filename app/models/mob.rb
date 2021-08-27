class Mob < ActiveRecord::Base
    has_many :skills
    has_many :quests
    belongs_to :battle
end