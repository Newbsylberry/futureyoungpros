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

ActiveRecord::Schema.define(version: 20140619030916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "job_site"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_site_applications", force: true do |t|
    t.integer  "business_id"
    t.integer  "school_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "school_code"
  end

  create_table "matches", force: true do |t|
    t.integer  "user_id"
    t.integer  "mou_id"
    t.integer  "student_interest_id"
    t.datetime "hostDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mous", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "phone"
    t.string   "jobTitle"
    t.string   "duration"
    t.date     "availability"
    t.string   "considerations"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "emailAddress"
    t.integer  "business_id"
    t.integer  "category_id"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zipCode"
    t.string   "contactFirstName"
    t.string   "contactLastName"
    t.string   "contactEmail"
    t.integer  "school_district_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "school_code"
  end

  create_table "student_interests", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.integer  "school_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "notes"
  end

  create_table "subcategories", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",             null: false
    t.string   "encrypted_password",     default: "",             null: false
    t.string   "role",                   default: "professional", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "roles",                  default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
