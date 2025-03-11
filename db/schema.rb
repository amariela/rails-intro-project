# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_03_11_015429) do
  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "neighbourhood_id"
  end

  create_table "businesses_contractors", id: false, force: :cascade do |t|
    t.integer "business_id", null: false
    t.integer "contractor_id", null: false
    t.index ["business_id", "contractor_id"], name: "index_businesses_contractors_on_business_id_and_contractor_id"
    t.index ["contractor_id", "business_id"], name: "index_businesses_contractors_on_contractor_id_and_business_id"
  end

  create_table "contractors", force: :cascade do |t|
    t.string "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contractors_neighbourhoods", id: false, force: :cascade do |t|
    t.integer "contractor_id", null: false
    t.integer "neighbourhood_id", null: false
    t.index ["contractor_id", "neighbourhood_id"], name: "idx_on_contractor_id_neighbourhood_id_4a56e5b84e"
    t.index ["neighbourhood_id", "contractor_id"], name: "idx_on_neighbourhood_id_contractor_id_6b0041801a"
  end

  create_table "neighbourhoods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "neighbourhood_id"
    t.index ["neighbourhood_id"], name: "index_parks_on_neighbourhood_id"
  end
end
