class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :platform
      t.string :publisher
      t.integer :inventory
      t.string :img

      t.timestamps
    end
  end
end
