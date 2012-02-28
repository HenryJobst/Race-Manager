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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120228222055) do

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "competitors", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "card_id"
    t.string   "gender"
    t.integer  "year_of_birth"
    t.integer  "club_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "lcevents", :primary_key => "id_event", :force => true do |t|
    t.integer   "id_country"
    t.string    "event_foreign_id",  :limit => 15
    t.string    "event_name",        :limit => 100
    t.text      "event_begin",                      :null => false
    t.text      "event_end",                        :null => false
    t.string    "event_discipline",  :limit => 64
    t.string    "event_form",        :limit => 64
    t.string    "event_organiser",   :limit => 64
    t.string    "event_picture",     :limit => 64
    t.string    "event_url",         :limit => 64
    t.string    "event_location",    :limit => 200
    t.timestamp "last_modification"
    t.datetime  "created_on"
    t.datetime  "updated_on"
  end

  add_index "lcevents", ["id_event"], :name => "id_event", :unique => true

  create_table "stamps", :primary_key => "id_stamp", :force => true do |t|
    t.integer   "id_event"
    t.integer   "stamp_card_id",                                      :null => false
    t.integer   "stamp_control_code"
    t.integer   "stamp_control_mode"
    t.integer   "stamp_station_serial"
    t.string    "stamp_pointer",          :limit => 6
    t.integer   "stamp_type"
    t.datetime  "stamp_readout_datetime",                             :null => false
    t.integer   "stamp_punch_timesi",                                 :null => false
    t.datetime  "stamp_punch_datetime",                               :null => false
    t.integer   "stamp_punch_ms",                                     :null => false
    t.integer   "stamp_punch_wday",                    :default => 0, :null => false
    t.timestamp "last_modification",                                  :null => false
    t.datetime  "created_on"
    t.datetime  "updated_on"
  end

  add_index "stamps", ["id_stamp", "id_event"], :name => "id_event_link_id_stamp"
  add_index "stamps", ["id_stamp"], :name => "id_stamp", :unique => true

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "club_id"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
