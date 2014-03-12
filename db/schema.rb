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

ActiveRecord::Schema.define(version: 20140312161205) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aircraft_configurations", force: true do |t|
    t.integer  "aircraft_type_id"
    t.integer  "airline_id"
    t.string   "name"
    t.integer  "first_seats"
    t.integer  "business_seats"
    t.integer  "economy_seats"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aircraft_types", force: true do |t|
    t.integer  "manufacturer_id"
    t.string   "name"
    t.string   "family"
    t.float    "average_speed"
    t.integer  "max_seats"
    t.float    "range"
    t.integer  "turn_time"
    t.integer  "min_runway_length"
    t.decimal  "base_price",        precision: 14, scale: 2
    t.decimal  "monthly_lease",     precision: 14, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aircrafts", force: true do |t|
    t.integer  "airline_id"
    t.datetime "bought_at"
    t.datetime "lease_start"
    t.datetime "lease_end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "aircraft_type_id"
    t.integer  "aircraft_configuration_id"
  end

  create_table "airlines", force: true do |t|
    t.string   "name"
    t.integer  "world_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "airports", force: true do |t|
    t.string   "country"
    t.string   "name"
    t.string   "code"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "daily_origin_pax"
    t.integer  "daily_destination_pax"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "engines", force: true do |t|
    t.string   "name"
    t.integer  "aircraft_type_id"
    t.float    "thrust"
    t.float    "weight"
    t.float    "fuel_flow"
    t.decimal  "adjusted_price",             precision: 14, scale: 2
    t.decimal  "adjusted_lease",             precision: 14, scale: 2
    t.float    "adjusted_range"
    t.float    "adjusted_speed"
    t.float    "adjusted_min_runway_length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flights", force: true do |t|
    t.integer  "route_id"
    t.integer  "airline_id"
    t.integer  "departure_airport_id"
    t.integer  "arrival_airport_id"
    t.integer  "first_pax"
    t.integer  "business_pax"
    t.integer  "economy_pax"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "aircraft_id"
  end

  create_table "routes", force: true do |t|
    t.integer  "departure_airport_id"
    t.integer  "arrival_airport_id"
    t.integer  "airline_id"
    t.float    "distance"
    t.decimal  "first_price",          precision: 6, scale: 2
    t.decimal  "business_price",       precision: 6, scale: 2
    t.decimal  "economy_price",        precision: 6, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "worlds", force: true do |t|
    t.string   "name"
    t.date     "start_year"
    t.date     "end_year"
    t.integer  "players"
    t.integer  "max_players"
    t.integer  "tick_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "time"
  end

end
