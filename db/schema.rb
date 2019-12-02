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

ActiveRecord::Schema.define(version: 2019_12_02_095635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "filters", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.string "skills"
    t.string "benefits"
    t.string "seniority"
    t.string "job_type"
    t.string "contract_type"
    t.integer "min_salary"
    t.string "position"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_filters_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "offer_id"
    t.bigint "swipe_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "result"
    t.index ["offer_id"], name: "index_matches_on_offer_id"
    t.index ["swipe_id"], name: "index_matches_on_swipe_id"
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.string "skills"
    t.string "benefits"
    t.string "seniority"
    t.string "job_type"
    t.string "contract_type"
    t.integer "min_salary"
    t.string "position"
    t.text "description"
    t.bigint "user_id"
    t.string "company_name"
    t.string "company_photo"
    t.index ["user_id"], name: "index_offers_on_user_id"
  end

  create_table "settings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "swipes", force: :cascade do |t|
    t.boolean "result"
    t.bigint "offer_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offer_id"], name: "index_swipes_on_offer_id"
    t.index ["user_id"], name: "index_swipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.string "first_name"
    t.string "company_photo"
    t.string "user_photo"
    t.string "company_name"
    t.string "last_name"
    t.string "location"
    t.string "skills"
    t.string "benefits"
    t.string "seniority"
    t.string "job_type"
    t.string "contract_type"
    t.integer "min_salary"
    t.string "position"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "filters", "users"
  add_foreign_key "matches", "offers"
  add_foreign_key "matches", "swipes"
  add_foreign_key "matches", "users"
  add_foreign_key "offers", "users"
  add_foreign_key "swipes", "offers"
  add_foreign_key "swipes", "users"
end
