class CreateScenes < ActiveRecord::Migration[6.1]
  def change
    create_table :scenes do |t|
      t.string :name
      t.string :image
      t.belongs_to :character, foreign_key: true
    end
  end
end
