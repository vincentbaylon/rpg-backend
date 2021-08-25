class Character < ActiveRecord::Base
    has_many :skills
    has_many :scenes
    belongs_to :battle
end