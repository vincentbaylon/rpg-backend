class Mob < ActiveRecord::Base
    has_many :skills
    belongs_to :quest
    belongs_to :battle
end