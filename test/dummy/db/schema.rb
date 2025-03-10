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

ActiveRecord::Schema[8.0].define(version: 2025_03_01_124210) do
  create_table "manga_tracker_chapters", force: :cascade do |t|
    t.integer "manga_id", null: false
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manga_id"], name: "index_manga_tracker_chapters_on_manga_id"
  end

  create_table "manga_tracker_manga", force: :cascade do |t|
    t.string "title"
    t.string "feed_source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reader_url"
  end

  add_foreign_key "manga_tracker_chapters", "manga_tracker_manga", column: "manga_id"
end
