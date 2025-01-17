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

ActiveRecord::Schema.define(version: 2020_02_09_000813) do

  create_table "cargos", force: :cascade do |t|
    t.string "booking_id", null: false
    t.integer "booking_amount", null: false
    t.string "transport_status", null: false
    t.string "routing_status", null: false
    t.string "origin_id"
    t.string "spec_origin_id"
    t.string "spec_destination_id"
    t.datetime "spec_arrival_deadline"
    t.string "last_known_location_id"
    t.string "current_voyage_number"
    t.integer "handling_event_id"
    t.integer "last_handling_event_id"
    t.string "last_handling_event_type"
    t.string "last_handling_event_voyage"
    t.string "last_handling_event_location"
    t.string "next_expected_location_id"
    t.string "next_expected_handling_event_type"
    t.string "next_expected_voyage_id"
    t.index ["booking_id"], name: "index_cargos_on_booking_id", unique: true
  end

  create_table "carrier_movements", force: :cascade do |t|
    t.string "arrival_location_id", null: false
    t.string "departure_location_id", null: false
    t.datetime "arrival_date", null: false
    t.datetime "departure_date", null: false
    t.integer "voyage_id", null: false
    t.index ["voyage_id"], name: "index_carrier_movements_on_voyage_id"
  end

  create_table "legs", force: :cascade do |t|
    t.datetime "load_time"
    t.datetime "unload_time"
    t.string "load_location_id"
    t.string "unload_location_id"
    t.string "voyage_number"
    t.integer "cargo_id"
    t.index ["cargo_id"], name: "index_legs_on_cargo_id"
  end

  create_table "tracking_activities", force: :cascade do |t|
    t.string "tracking_number", null: false
    t.string "booking_id", null: false
  end

  create_table "tracking_handling_events", force: :cascade do |t|
    t.string "event_type"
    t.datetime "event_time"
    t.string "location_id"
    t.string "voyage_number"
    t.integer "tracking_activity_id"
    t.index ["tracking_activity_id"], name: "index_tracking_handling_events_on_tracking_activity_id"
  end

  create_table "voyages", force: :cascade do |t|
    t.string "voyage_number"
  end

end
