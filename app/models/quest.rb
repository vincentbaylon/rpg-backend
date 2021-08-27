class Quest < ActiveRecord::Base
    has_many :quest_lists
    has_many :characters, through: :quest_lists
    has_one :mob
end