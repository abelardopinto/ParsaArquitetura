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

ActiveRecord::Schema.define(:version => 20110303030554) do

  create_table "clients", :force => true do |t|
    t.string   "user",       :limit => 50, :null => false
    t.string   "password",   :limit => 50, :null => false
    t.string   "name"
    t.string   "contact"
    t.string   "tel"
    t.string   "cel"
    t.text     "address"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clients", ["user"], :name => "index_clients_on_user", :unique => true

  create_table "folders", :force => true do |t|
    t.integer  "client_id",   :null => false
    t.string   "name",        :null => false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
