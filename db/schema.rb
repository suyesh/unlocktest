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

ActiveRecord::Schema.define(version: 20140222223359) do

  create_table "alcatels", force: true do |t|
    t.string   "services"
    t.string   "imei"
    t.string   "response_email"
    t.string   "text_alert"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alcatels", ["user_id"], name: "index_alcatels_on_user_id"

  create_table "blackberries", force: true do |t|
    t.string   "services"
    t.string   "imei"
    t.string   "response_email"
    t.string   "text_alert"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blackberries", ["user_id"], name: "index_blackberries_on_user_id"

  create_table "htcs", force: true do |t|
    t.string   "services"
    t.string   "imei"
    t.string   "response_email"
    t.string   "text_alert"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "htcs", ["user_id"], name: "index_htcs_on_user_id"

  create_table "huwaeis", force: true do |t|
    t.string   "services"
    t.string   "imei"
    t.string   "response_email"
    t.string   "text_alert"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "huwaeis", ["user_id"], name: "index_huwaeis_on_user_id"

  create_table "iphones", force: true do |t|
    t.string   "services"
    t.string   "imei"
    t.string   "response_email"
    t.string   "text_alert"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "iphones", ["user_id"], name: "index_iphones_on_user_id"

  create_table "lgs", force: true do |t|
    t.string   "services"
    t.string   "imei"
    t.string   "response_email"
    t.string   "text_alert"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lgs", ["user_id"], name: "index_lgs_on_user_id"

  create_table "samsungs", force: true do |t|
    t.string   "services"
    t.string   "imei"
    t.string   "response_email"
    t.string   "text_alert"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "samsungs", ["user_id"], name: "index_samsungs_on_user_id"

  create_table "users", force: true do |t|
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
