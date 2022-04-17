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

ActiveRecord::Schema[7.0].define(version: 2022_04_15_234250) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cycle_times", force: :cascade do |t|
    t.integer "time"
    t.integer "takt_time_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructions", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repairs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.bigint "instruction_id"
    t.string "title"
    t.string "description"
    t.integer "cycle_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instruction_id"], name: "index_sections_on_instruction_id"
  end

  create_table "sub_sections", force: :cascade do |t|
    t.bigint "section_id"
    t.string "title"
    t.string "description"
    t.integer "cycle_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_sub_sections_on_section_id"
  end

  create_table "sub_sub_sections", force: :cascade do |t|
    t.bigint "sub_section_id"
    t.string "title"
    t.string "description"
    t.integer "cycle_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sub_section_id"], name: "index_sub_sub_sections_on_sub_section_id"
  end

  create_table "takt_times", force: :cascade do |t|
    t.integer "time"
    t.integer "repair_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "sections", "instructions"
  add_foreign_key "sub_sections", "sections"
  add_foreign_key "sub_sub_sections", "sub_sections"
end
