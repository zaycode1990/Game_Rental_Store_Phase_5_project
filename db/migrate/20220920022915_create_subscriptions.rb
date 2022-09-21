class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.string :sub_status
      t.float :sub_fee
      t.integer :user_id

      t.timestamps
    end
  end
end
