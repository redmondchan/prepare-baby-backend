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

ActiveRecord::Schema.define(version: 2019_04_02_182318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "babies", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "feed_time"
    t.string "diaper_time"
    t.string "hungry_time"
    t.string "dirty_time"
    t.integer "hp", default: 80
    t.integer "feedMissed", default: 0
    t.integer "diaperMissed", default: 0
    t.integer "feed", default: 0
    t.integer "forceFeed", default: 0
    t.integer "diaper", default: 0
    t.integer "forceDiaper", default: 0
    t.integer "feedMoney", default: 0
    t.integer "diaperMoney", default: 0
    t.boolean "hungry", default: false
    t.boolean "poop", default: false
    t.boolean "happy", default: false
    t.boolean "initialFeed", default: false
    t.boolean "initialDiaper", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.integer "baby_id"
    t.string "task"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "javascript_time"
    t.string "baby_name"
    t.integer "selffish"
    t.integer "selfless"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
