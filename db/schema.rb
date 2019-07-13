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

ActiveRecord::Schema.define(version: 2019_07_13_062103) do

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.integer "birth_date"
    t.string "age_info"
    t.string "breed"
    t.string "species"
    t.string "size"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "registry_id"
    t.boolean "children_friendly"
    t.boolean "allergic_friendly"
    t.boolean "microchipped"
    t.boolean "dog_friendly"
    t.boolean "cat_friendly"
    t.boolean "sterilized"
    t.integer "shelter_id"
    t.index ["shelter_id"], name: "index_pets_on_shelter_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.text "opening_hours"
    t.string "phone_number"
    t.string "account_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_shelters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_shelters_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
