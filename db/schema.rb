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

ActiveRecord::Schema.define(version: 2018_09_17_063939) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "body"
    t.index ["room_id"], name: "index_comments_on_room_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "members", force: :cascade do |t|
    t.integer "room_id"
    t.integer "user_id"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_members_on_role_id"
    t.index ["room_id"], name: "index_members_on_room_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "screen_name"
    t.integer "twitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workloads", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.boolean "done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_workloads_on_room_id"
    t.index ["user_id"], name: "index_workloads_on_user_id"
  end

end
