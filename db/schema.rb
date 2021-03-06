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

ActiveRecord::Schema.define(version: 20150321032026) do

  create_table "allowed_allergies", force: :cascade do |t|
    t.integer  "yummly_id"
    t.string   "allergy_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "search_value"
  end

  create_table "allowed_diets", force: :cascade do |t|
    t.integer  "yummly_id"
    t.string   "diet_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "search_value"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "user_id"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "excluded_ingredients", force: :cascade do |t|
    t.string   "ingredient_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "search_value"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.text     "excluded_ingredient_id"
    t.text     "allowed_allergy_id"
    t.text     "allowed_diet_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "yummly_id"
    t.text     "description"
    t.string   "cuisine"
    t.string   "course"
    t.integer  "max_total_time_in_seconds"
    t.integer  "favorites_count"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "favorites_count"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
