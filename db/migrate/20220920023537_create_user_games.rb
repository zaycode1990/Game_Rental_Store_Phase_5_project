class CreateUserGames < ActiveRecord::Migration[7.0]
  def change
    create_table :user_games do |t|
      t.integer :user_id
      t.integer :game_id 
      t.boolean :late
      t.datetime :due_date
      t.boolean :returned

      t.timestamps
    end
  end
end
