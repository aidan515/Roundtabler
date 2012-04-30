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

ActiveRecord::Schema.define(:version => 20120430141224) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "full_name"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.integer  "city_id"
  end

  create_table "profiles", :force => true do |t|
    t.string   "description"
    t.string   "interest_1"
    t.string   "interest_2"
    t.string   "hobby_1"
    t.string   "hobby_2"
    t.string   "employer"
    t.date     "birthday"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "member_id"
    t.string   "image"
  end

  create_table "requests", :force => true do |t|
    t.integer  "roundtable_id"
    t.integer  "member_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "confirm"
  end

  create_table "roundtables", :force => true do |t|
    t.string   "topic"
    t.integer  "attendee_number"
    t.date     "dinner_on"
    t.time     "kick_off"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "member_id"
    t.integer  "sample"
    t.integer  "venue_id"
    t.integer  "city_id"
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "r_type"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "post_code"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "venue_image"
    t.integer  "city_id"
  end

end
