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

ActiveRecord::Schema.define(version: 20140528071354) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "details", force: true do |t|
    t.boolean  "public"
    t.string   "title"
    t.text     "description"
    t.integer  "priceNumber"
    t.string   "pricePer"
    t.text     "whatInclude"
    t.text     "whatExclude"
    t.integer  "durationTime"
    t.boolean  "durationDayOrHour"
    t.integer  "groupSize"
    t.text     "availability"
    t.text     "additionalInfo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "categoryID"
  end

  create_table "programs", force: true do |t|
    t.text     "when"
    t.text     "what"
    t.integer  "detail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programs", ["detail_id"], name: "index_programs_on_detail_id", using: :btree

end
