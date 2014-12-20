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

ActiveRecord::Schema.define(:version => 20141219194335) do

  create_table "balls", :force => true do |t|
    t.string   "color"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cms_basic_pages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cms_fans", :force => true do |t|
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "name",       :limit => 100, :null => false
  end

  create_table "colosseum_user_levels", :force => true do |t|
    t.integer  "user_no"
    t.integer  "user_level"
    t.integer  "times"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "colosseum_user_levels", ["user_no"], :name => "index_colosseum_user_levels_on_user_no"

  create_table "comments", :force => true do |t|
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.text     "content"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "divisions", :primary_key => "custom_id", :force => true do |t|
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "custom_league_id"
    t.string   "name",             :limit => 50, :null => false
  end

  create_table "drafts", :force => true do |t|
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "player_id"
    t.integer  "team_id"
    t.date     "date"
    t.integer  "round"
    t.integer  "pick"
    t.integer  "overall"
    t.string   "college",    :limit => 100
    t.text     "notes"
  end

  create_table "fans", :force => true do |t|
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "name",       :limit => 100, :null => false
  end

  create_table "fans_teams", :id => false, :force => true do |t|
    t.integer "fan_id"
    t.integer "team_id"
  end

  create_table "field_tests", :force => true do |t|
    t.string   "string_field"
    t.text     "text_field"
    t.integer  "integer_field"
    t.float    "float_field"
    t.decimal  "decimal_field",             :precision => 10, :scale => 0
    t.datetime "datetime_field"
    t.datetime "timestamp_field"
    t.time     "time_field"
    t.date     "date_field"
    t.boolean  "boolean_field"
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.string   "format"
    t.string   "restricted_field"
    t.string   "protected_field"
    t.string   "paperclip_asset_file_name"
    t.string   "dragonfly_asset_uid"
    t.string   "carrierwave_asset"
  end

  create_table "leagues", :force => true do |t|
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "name",       :limit => 50, :null => false
  end

  create_table "nested_field_tests", :force => true do |t|
    t.string   "title"
    t.integer  "field_test_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "players", :force => true do |t|
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.datetime "deleted_at"
    t.integer  "team_id"
    t.string   "name",       :limit => 100,                    :null => false
    t.string   "position",   :limit => 50
    t.integer  "number",                                       :null => false
    t.boolean  "retired",                   :default => false
    t.boolean  "injured",                   :default => false
    t.date     "born_on"
    t.text     "notes"
    t.boolean  "suspended",                 :default => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.string   "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rails_admin_histories", ["item", "table"], :name => "index_histories_on_item_and_table"

  create_table "rel_tests", :force => true do |t|
    t.integer  "league_id"
    t.integer  "division_id", :null => false
    t.integer  "player_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "teams", :force => true do |t|
    t.datetime "created_at",                                                   :null => false
    t.datetime "updated_at",                                                   :null => false
    t.integer  "division_id"
    t.string   "name",           :limit => 50
    t.string   "logo_url"
    t.string   "manager",        :limit => 100,                                :null => false
    t.string   "ballpark",       :limit => 100
    t.string   "mascot",         :limit => 100
    t.integer  "founded"
    t.integer  "wins"
    t.integer  "losses"
    t.float    "win_percentage"
    t.decimal  "revenue",                       :precision => 18, :scale => 2
    t.string   "color"
  end

  create_table "unscoped_pages", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_hero_nums", :force => true do |t|
    t.integer  "user_no"
    t.integer  "hero_num"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_hero_nums", ["user_no"], :name => "index_user_hero_nums_on_user_no"

  create_table "user_logins", :force => true do |t|
    t.integer  "user_no"
    t.string   "dt"
    t.string   "reg_dt"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_logins", ["user_no"], :name => "index_user_logins_on_user_no"

  create_table "user_medals", :force => true do |t|
    t.integer  "user_no"
    t.integer  "medal_cnt"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_medals", ["user_no"], :name => "index_user_medals_on_user_no"

  create_table "user_mercenary_nums", :force => true do |t|
    t.integer  "user_no"
    t.integer  "mercenary_num"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "user_mercenary_nums", ["user_no"], :name => "index_user_mercenary_nums_on_user_no"

  create_table "user_stage_processes", :force => true do |t|
    t.integer  "user_no"
    t.integer  "stage_info_no"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "user_stage_processes", ["user_no"], :name => "index_user_stage_processes_on_user_no"

  create_table "user_stars", :force => true do |t|
    t.integer  "user_no"
    t.integer  "paid_star"
    t.integer  "sub_star"
    t.string   "paid_dt"
    t.string   "reg_dt"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_stars", ["user_no"], :name => "index_user_stars_on_user_no"

  create_table "user_summaries", :force => true do |t|
    t.integer  "user_no"
    t.integer  "gold"
    t.integer  "ap"
    t.integer  "hero_max_level"
    t.integer  "reg_dt"
    t.string   "last_active_dt"
    t.integer  "stage_info_no"
    t.integer  "hero_num"
    t.integer  "mercenary_num"
    t.integer  "paid_user"
    t.integer  "paid_gold"
    t.integer  "paid_balance"
    t.integer  "free_balance"
    t.integer  "medal_cnt"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "user_summaries", ["user_no"], :name => "index_user_summaries_on_user_no"

  create_table "user_tracks", :force => true do |t|
    t.integer  "user_no"
    t.integer  "day1"
    t.integer  "day2"
    t.integer  "day3"
    t.integer  "day4"
    t.integer  "day5"
    t.integer  "day6"
    t.integer  "day7"
    t.integer  "day8"
    t.integer  "day9"
    t.integer  "day10"
    t.integer  "day11"
    t.integer  "day12"
    t.integer  "day13"
    t.integer  "day14"
    t.integer  "day15"
    t.integer  "day16"
    t.integer  "day17"
    t.integer  "day18"
    t.integer  "day19"
    t.integer  "day20"
    t.integer  "day21"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_tracks", ["user_no"], :name => "index_user_tracks_on_user_no"

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password_salt"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "roles"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
