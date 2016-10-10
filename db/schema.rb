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

ActiveRecord::Schema.define(version: 20161010105649) do

  create_table "askers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "ask_count",  default: 0
    t.index ["email"], name: "index_askers_on_email", unique: true
  end

  create_table "options", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "photo_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "photos", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.integer  "asker_id"
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "asker_id"
    t.integer  "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "option_id"
    t.index ["asker_id"], name: "index_requests_on_asker_id"
    t.index ["option_id"], name: "index_requests_on_option_id"
    t.index ["photo_id"], name: "index_requests_on_photo_id"
  end

end
