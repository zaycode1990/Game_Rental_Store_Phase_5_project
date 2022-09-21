# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_20_023537) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.string "title"
    t.text "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "platform"
    t.string "publisher"
    t.integer "inventory"
    t.string "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "sub_status"
    t.float "sub_fee"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_games", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.boolean "late"
    t.datetime "due_date"
    t.boolean "returned"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "email"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "zip"
    t.string "credit_card"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
