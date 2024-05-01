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

ActiveRecord::Schema[7.0].define(version: 2024_05_01_140718) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "part_sets", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "part_id", null: false
    t.float "x_position"
    t.float "y_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_part_sets_on_part_id"
    t.index ["user_id"], name: "index_part_sets_on_user_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "part_type"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "default_flag", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "part_sets", "parts"
  add_foreign_key "part_sets", "users"
end
