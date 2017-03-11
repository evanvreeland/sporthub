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

ActiveRecord::Schema.define(version: 20170311192020) do

  create_table "activity_records", force: true do |t|
    t.datetime "date"
    t.integer  "sport_id_id"
    t.integer  "user_id_id"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activity_records", ["sport_id_id"], name: "index_activity_records_on_sport_id_id", using: :btree
  add_index "activity_records", ["user_id_id"], name: "index_activity_records_on_user_id_id", using: :btree

  create_table "organizations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sports", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "organization_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["organization_id_id"], name: "index_teams_on_organization_id_id", using: :btree

  create_table "user_sport", force: true do |t|
    t.integer  "user_id_id"
    t.integer  "sport_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_team", force: true do |t|
    t.integer  "user_id_id"
    t.integer  "team_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "weight"
    t.integer  "height"
    t.string   "email"
    t.boolean  "is_profile_private"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
