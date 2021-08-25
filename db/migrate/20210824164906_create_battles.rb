class CreateBattles < ActiveRecord::Migration[6.1]
  def change
    create_table :battles do |t|
      t.belongs_to :character, foreign_key: true
      t.belongs_to :mob, foreign_key: true
    end
  end
end
