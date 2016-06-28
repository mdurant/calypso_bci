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

ActiveRecord::Schema.define(version: 20160628204629) do

  create_table "areas", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "deeds", force: :cascade do |t|
    t.string   "title"
    t.text     "benefit"
    t.integer  "id_user"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "area_id"
    t.date     "date_deed"
    t.string   "title_evento"
    t.string   "description_evento"
  end

  create_table "hitos", force: :cascade do |t|
    t.string   "title"
    t.date     "date_from"
    t.date     "date_end"
    t.text     "benefit"
    t.integer  "id_user"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "area_id"
    t.string   "title_evento"
    t.string   "description_evento"
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "photo"
    t.integer  "id_user"
    t.integer  "id_category"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profile_teams", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "celular"
    t.string   "anexo"
    t.string   "address_work"
    t.string   "image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string   "title"
    t.integer  "area_id"
    t.text     "description"
    t.date     "date_request"
    t.string   "image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "usuario"
  end

  create_table "review_scheduled_tasks", force: :cascade do |t|
    t.date     "date"
    t.string   "task_id"
    t.boolean  "start"
    t.boolean  "end"
    t.text     "observation"
    t.text     "comment_to_day"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "execution_time"
    t.string   "name"
    t.string   "description"
    t.string   "task_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "foto_usuario"
    t.string   "fotografia"
    t.string   "image"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
