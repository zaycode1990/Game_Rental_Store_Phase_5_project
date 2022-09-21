class CreateGameReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :game_reviews do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
