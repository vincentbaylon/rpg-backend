class CreateMobs < ActiveRecord::Migration[6.1]
  def change
    create_table :mobs do |t|
      t.string :name
      t.string :image
      t.integer :health
      t.integer :attack
      t.integer :defense
      t.boolean :turn
      t.boolean :in_battle
    end
  end
end
