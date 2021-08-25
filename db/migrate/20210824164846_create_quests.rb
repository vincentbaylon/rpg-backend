class CreateQuests < ActiveRecord::Migration[6.1]
  def change
    create_table :quests do |t|
      t.string :name
      t.string :reward
      t.string :image
      t.string :reward_image
      t.array :speech
    end
  end
end
