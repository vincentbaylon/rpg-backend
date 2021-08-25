class CreateQuestLists < ActiveRecord::Migration[6.1]
  def change
    create_table :quest_lists do |t|
      t.belongs_to :character, foreign_key: true
      t.belongs_to :quest, foreign_key: true
    end
  end
end
