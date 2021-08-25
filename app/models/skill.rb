class Skill < ActiveRecord::Base
    belongs_to :character
    belongs_to :mob
end