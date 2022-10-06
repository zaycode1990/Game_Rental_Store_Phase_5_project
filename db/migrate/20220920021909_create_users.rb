class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.boolean :admin, :default => false
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :city
      t.string :state
      t.string :country
      t.integer :zip
      t.string :credit_card

      t.timestamps
    end
  end
end
