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

ActiveRecord::Schema.define(version: 2019_07_12_152011) do

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
  end

end
