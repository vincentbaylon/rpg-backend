class CreateQuests < ActiveRecord::Migration[6.1]
  def change
    create_table :quests do |t|
      t.string :name
      t.string :reward
      t.string :image
      t.string :reward_image
      t.belongs_to :mob, foreign_key: true
    end
  end
end
