# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150330133325) do

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.decimal  "sat_min_score"
    t.decimal  "sat_max_score"
    t.decimal  "tuition"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "image"
  end

  create_table "mentors", force: :cascade do |t|
    t.string   "name"
    t.string   "sex"
    t.integer  "age"
    t.date     "date_of_birth"
    t.text     "bio"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "image"
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "sex"
    t.integer  "age"
    t.string   "school"
    t.string   "level"
    t.string   "country"
    t.decimal  "sat_score"
    t.date     "date_of_birth"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "college_id"
    t.string   "image"
  end

end
