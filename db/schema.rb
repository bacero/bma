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

ActiveRecord::Schema.define(version: 20180209002613) do

  create_table "competitors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "identification"
    t.integer  "town_id"
    t.string   "cellphone"
    t.string   "email"
    t.boolean  "habeas_data"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["town_id"], name: "index_competitors_on_town_id", using: :btree
  end

  create_table "states", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
  end

  create_table "towns", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name"
    t.integer "state_id"
    t.index ["state_id"], name: "index_towns_on_state_id", using: :btree
  end

  create_table "winners", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "competitor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["competitor_id"], name: "index_winners_on_competitor_id", using: :btree
  end

  add_foreign_key "competitors", "towns"
  add_foreign_key "towns", "states"
end
