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

ActiveRecord::Schema.define(:version => 20130717050637) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "dues", :force => true do |t|
    t.datetime "last_paid"
    t.integer  "amount"
    t.integer  "worker_profile_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "employer_profiles", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "home_phone"
    t.integer  "cell_phone"
    t.integer  "work_phone"
    t.string   "address"
  end

  create_table "identifications", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "identifications_worker_profiles", :id => false, :force => true do |t|
    t.integer "indentification_id"
    t.integer "worker_profile_id"
  end

  create_table "indentifications", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "issues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "issues_worker_profiles", :id => false, :force => true do |t|
    t.integer "issue_id"
    t.integer "worker_profile_id"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items_jobs", :id => false, :force => true do |t|
    t.integer "item_id"
    t.integer "job_id"
  end

  create_table "jobs", :force => true do |t|
    t.string   "kind"
    t.string   "description"
    t.datetime "date_of_job"
    t.string   "duration"
    t.string   "address"
    t.string   "cross_street"
    t.integer  "phone_number"
    t.string   "phone_kind"
    t.string   "referred_by"
    t.string   "payment"
    t.boolean  "one_time"
    t.boolean  "on_going"
    t.string   "frequency"
    t.integer  "num_of_workers"
    t.string   "english_level"
    t.boolean  "will_pick_up"
    t.string   "job_status"
    t.integer  "dispatcher_id"
    t.integer  "receiver_id"
    t.boolean  "estimate"
    t.boolean  "estimate_accepted"
    t.float    "estimate_amount"
    t.integer  "employer_profile_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "jobs_wages", :id => false, :force => true do |t|
    t.integer "job_id"
    t.integer "wage_id"
  end

  create_table "photos", :force => true do |t|
    t.string   "url"
    t.string   "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "referrals", :force => true do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reviews", :force => true do |t|
    t.integer  "job_id"
    t.string   "prompt1"
    t.string   "prompt2"
    t.string   "prompt3"
    t.string   "prompt4"
    t.string   "prompt5"
    t.string   "answer1"
    t.string   "answer2"
    t.string   "answer3"
    t.string   "answer4"
    t.string   "answer5"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skills_worker_profiles", :id => false, :force => true do |t|
    t.integer "skill_id"
    t.integer "worker_profile_id"
  end

  create_table "tools", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tools_worker_profiles", :id => false, :force => true do |t|
    t.integer "tool_id"
    t.integer "worker_profile_id"
  end

  create_table "training_requests", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "training_requests_worker_profiles", :id => false, :force => true do |t|
    t.integer "training_request_id"
    t.integer "worker_profile_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "profile_id"
    t.string   "profile_type"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "wages", :force => true do |t|
    t.string   "name"
    t.integer  "base_amount"
    t.integer  "ot_amount"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "worker_profiles", :force => true do |t|
    t.string   "gender"
    t.string   "bio"
    t.string   "esl_level"
    t.integer  "wait_list"
    t.boolean  "own_vehicle"
    t.boolean  "health_insurance"
    t.boolean  "want_referral"
    t.datetime "flyered"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
