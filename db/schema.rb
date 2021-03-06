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

ActiveRecord::Schema.define(version: 20180607130332) do

  create_table "beneficiaries", force: :cascade do |t|
    t.string   "name"
    t.datetime "date_of_birth"
    t.string   "gender"
    t.integer  "id_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "updates", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "beneficiary_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "complete",       default: false
    t.date     "date"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "email"
    t.string   "password"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_confirmation"
  end

end
