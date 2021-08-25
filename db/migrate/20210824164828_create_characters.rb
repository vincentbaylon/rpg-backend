class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image
      t.integer :health
      t.integer :attack
      t.integer :defense
      t.boolean :on_quest
      t.boolean :in_battle
      t.boolean :turn
    end
  end
end
