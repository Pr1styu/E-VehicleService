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

ActiveRecord::Schema[7.0].define(version: 2022_04_23_095621) do
  create_table "services", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "snumber"
    t.float "rating"
    t.string "brands"
    t.string "pnumber"
    t.date "nextappointment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "password"
    t.string "email"
    t.bigint "services_id", null: false
    t.index ["services_id"], name: "index_users_on_services_id"
  end

  create_table "vservices", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "vin"
    t.bigint "user_id", null: false
    t.bigint "services_id", null: false
    t.string "sdescription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
    t.index ["services_id"], name: "index_vservices_on_services_id"
    t.index ["user_id"], name: "index_vservices_on_user_id"
  end

  add_foreign_key "users", "services", column: "services_id"
  add_foreign_key "vservices", "services", column: "services_id"
  add_foreign_key "vservices", "users"
end
