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

ActiveRecord::Schema.define(version: 2020_03_21_200135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "titles", force: :cascade do |t|
    t.string "imdb_id"
    t.string "title"
    t.string "year"
    t.string "rated"
    t.string "released"
    t.string "runtime"
    t.string "genre"
    t.string "director"
    t.string "writers"
    t.string "actors"
    t.string "plot"
    t.string "country"
    t.string "language"
    t.string "metascore"
    t.string "poster"
    t.string "rating"
    t.string "votes"
    t.string "budget"
    t.string "opening_weekend"
    t.string "gross"
    t.string "production"
    t.string "parent_id"
    t.string "title_type"
    t.string "session"
    t.string "episode_id"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
