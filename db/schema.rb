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

ActiveRecord::Schema[7.1].define(version: 2024_06_17_034802) do
  create_table "boards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "columns", force: :cascade do |t|
    t.string "name"
    t.integer "board_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_columns_on_board_id"
  end

  create_table "commitment_points", force: :cascade do |t|
    t.string "name"
    t.integer "board_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_commitment_points_on_board_id"
  end

  create_table "delivery_points", force: :cascade do |t|
    t.string "name"
    t.integer "board_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_delivery_points_on_board_id"
  end

  create_table "visual_signals", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "column_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["column_id"], name: "index_visual_signals_on_column_id"
  end

  create_table "work_in_progress_limits", force: :cascade do |t|
    t.integer "limit"
    t.integer "column_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["column_id"], name: "index_work_in_progress_limits_on_column_id"
  end

  add_foreign_key "columns", "boards"
  add_foreign_key "commitment_points", "boards"
  add_foreign_key "delivery_points", "boards"
  add_foreign_key "visual_signals", "columns"
  add_foreign_key "work_in_progress_limits", "columns"
end
