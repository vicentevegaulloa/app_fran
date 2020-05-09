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

ActiveRecord::Schema.define(version: 2020_05_09_011451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer "stars"
    t.text "body"
    t.bigint "match_user_id"
    t.bigint "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_comments_on_local_id"
    t.index ["match_user_id"], name: "index_comments_on_match_user_id"
  end

  create_table "local_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "local_id"
    t.string "name"
    t.index ["email"], name: "index_local_users_on_email", unique: true
    t.index ["local_id"], name: "index_local_users_on_local_id"
    t.index ["reset_password_token"], name: "index_local_users_on_reset_password_token", unique: true
  end

  create_table "locals", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "local_user_id"
    t.index ["local_user_id"], name: "index_locals_on_local_user_id"
  end

  create_table "match_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_match_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_match_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "locals"
  add_foreign_key "comments", "match_users"
  add_foreign_key "locals", "local_users"
end
