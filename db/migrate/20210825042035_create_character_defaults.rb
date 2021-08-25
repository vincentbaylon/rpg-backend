class CreateCharacterDefaults < ActiveRecord::Migration[6.1]
  def change
    change_column :characters, :health, :integer, default: 100
    change_column :characters, :attack, :integer, default: 25
    change_column :characters, :defense, :integer, default: 0
    change_column :characters, :on_quest, :boolean, default: false
    change_column :characters, :in_battle, :boolean, default: false
    change_column :characters, :turn, :boolean, default: false
  end
end