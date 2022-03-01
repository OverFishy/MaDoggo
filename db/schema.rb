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

ActiveRecord::Schema.define(version: 2022_02_28_150144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "gender"
    t.string "breed"
    t.string "size"
    t.string "traits"
    t.integer "age"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dogs_on_user_id"
  end

  create_table "friendships", force: :cascade do |t|
    t.bigint "user1_id", null: false
    t.bigint "user2_id", null: false
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user1_id"], name: "index_friendships_on_user1_id"
    t.index ["user2_id"], name: "index_friendships_on_user2_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "message"
    t.bigint "user_id", null: false
    t.bigint "friendship_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["friendship_id"], name: "index_messages_on_friendship_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "park_messages", force: :cascade do |t|
    t.bigint "park_id", null: false
    t.bigint "user_id", null: false
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_park_messages_on_park_id"
    t.index ["user_id"], name: "index_park_messages_on_user_id"
  end

  create_table "park_reviews", force: :cascade do |t|
    t.bigint "park_id", null: false
    t.bigint "user_id", null: false
    t.string "review"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_park_reviews_on_park_id"
    t.index ["user_id"], name: "index_park_reviews_on_user_id"
  end

  create_table "park_visits", force: :cascade do |t|
    t.bigint "park_id", null: false
    t.date "ended_at"
    t.date "started_at"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_park_visits_on_park_id"
    t.index ["user_id"], name: "index_park_visits_on_user_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "dogs", "users"
  add_foreign_key "messages", "friendships"
  add_foreign_key "messages", "users"
  add_foreign_key "park_messages", "parks"
  add_foreign_key "park_messages", "users"
  add_foreign_key "park_reviews", "parks"
  add_foreign_key "park_reviews", "users"
  add_foreign_key "park_visits", "parks"
  add_foreign_key "park_visits", "users"
end
