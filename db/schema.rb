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

ActiveRecord::Schema.define(version: 20150922225928) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "start_time"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments_work_items", force: :cascade do |t|
    t.integer "work_item_id"
    t.integer "appointment_id"
  end

  add_index "appointments_work_items", ["work_item_id", "appointment_id"], name: "appointment_work_items_index", unique: true

  create_table "cortes", force: :cascade do |t|
    t.string   "tipo_corte"
    t.integer  "duracion"
    t.integer  "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.string   "description"
    t.string   "porcent"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.datetime "dia"
    t.integer  "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tienes", force: :cascade do |t|
    t.integer  "reservas_id"
    t.integer  "cortes_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.integer  "sex",                 default: 0
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "confirmation_secret"
    t.integer  "profile",             default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "work_items", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
