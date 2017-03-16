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

ActiveRecord::Schema.define(:version => 20160108075104) do

  create_table "categories", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "departments_documents", :id => false, :force => true do |t|
    t.integer "department_id"
    t.integer "document_id"
  end

  create_table "departments_users", :id => false, :force => true do |t|
    t.integer "department_id"
    t.integer "user_id"
  end

  create_table "dispatch_stages", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.string   "source_protocol"
    t.datetime "source_date"
    t.string   "target_protocol"
    t.datetime "target_date"
    t.text     "subject"
    t.integer  "category_id"
    t.datetime "assignment_date"
    t.text     "task"
    t.datetime "dispatch_deadline"
    t.integer  "dispatch_stage_id"
    t.string   "dispatch_protocol"
    t.datetime "dispatch_date"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
    t.integer  "institution_id"
    t.boolean  "registered_to_central_protocol_db", :default => false
  end

  create_table "documents_users", :id => false, :force => true do |t|
    t.integer "document_id"
    t.integer "user_id"
  end

  create_table "institutions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "hashed_password"
    t.string   "phone"
    t.boolean  "manager"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.boolean  "female"
    t.boolean  "active",          :default => true
  end

end
