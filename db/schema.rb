# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_10_105038) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menifests", force: :cascade do |t|
    t.integer "actor_id", null: false
    t.integer "series_id", null: false
    t.integer "shooting_location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actor_id"], name: "index_menifests_on_actor_id"
    t.index ["series_id"], name: "index_menifests_on_series_id"
    t.index ["shooting_location_id"], name: "index_menifests_on_shooting_location_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "stars"
    t.string "review_comment"
    t.integer "series_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["series_id"], name: "index_reviews_on_series_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "series", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.integer "no_of_seasons"
    t.string "director"
    t.date "date_of_first_release"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shooting_locations", force: :cascade do |t|
    t.string "city"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "menifests", "actors"
  add_foreign_key "menifests", "series"
  add_foreign_key "menifests", "shooting_locations"
  add_foreign_key "reviews", "series"
  add_foreign_key "reviews", "users"
end
