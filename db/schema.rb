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

ActiveRecord::Schema.define(version: 20180130102954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parking_histories", force: :cascade do |t|
    t.string "address", default: "", null: false
    t.string "date", default: "", null: false
    t.decimal "duration", default: "0.0", null: false
    t.decimal "paid_price", default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_locations", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "description", default: "", null: false
    t.string "address", default: "", null: false
    t.string "latitude", default: "", null: false
    t.string "longitude", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "password", default: "", null: false
    t.string "username", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
