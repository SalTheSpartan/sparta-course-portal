# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170328134137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.text     "name"
    t.text     "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.text     "name"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "size"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_groups_on_course_id", using: :btree
  end

  create_table "groups_lessons", id: false, force: :cascade do |t|
    t.integer "group_id",  null: false
    t.integer "lesson_id", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.text     "title"
    t.integer  "syllabus_id"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["syllabus_id"], name: "index_lessons_on_syllabus_id", using: :btree
  end

  create_table "syllabuses", force: :cascade do |t|
    t.text     "title"
    t.text     "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "groups", "courses"
  add_foreign_key "lessons", "syllabuses"
end
