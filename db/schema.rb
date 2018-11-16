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

ActiveRecord::Schema.define(version: 20180629004622) do

  create_table "action_items", force: :cascade do |t|
    t.string   "description"
    t.date     "opened_date"
    t.date     "due_date"
    t.date     "expected_date"
    t.integer  "SalesOrder_id"
    t.integer  "User_id"
    t.integer  "assigned_to"
    t.integer  "assigned_by"
    t.string   "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "action_items", ["SalesOrder_id"], name: "index_action_items_on_SalesOrder_id"
  add_index "action_items", ["User_id"], name: "index_action_items_on_User_id"

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.float    "price"
    t.integer  "lead_time"
    t.integer  "Supplier_id"
    t.string   "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "parts", ["Supplier_id"], name: "index_parts_on_Supplier_id"

  create_table "purchase_orders", force: :cascade do |t|
    t.integer  "number"
    t.integer  "Supplier_id"
    t.integer  "SalesOrder_id"
    t.string   "notes"
    t.date     "order_date"
    t.date     "due_date"
    t.date     "expected_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "purchase_orders", ["SalesOrder_id"], name: "index_purchase_orders_on_SalesOrder_id"
  add_index "purchase_orders", ["Supplier_id"], name: "index_purchase_orders_on_Supplier_id"

  create_table "sales_orders", force: :cascade do |t|
    t.integer  "number"
    t.string   "description"
    t.date     "opened_date"
    t.date     "due_date"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sales_orders", ["customer_id"], name: "index_sales_orders_on_customer_id"

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "work_orders", force: :cascade do |t|
    t.integer  "number"
    t.string   "description"
    t.integer  "SalesOrder_id"
    t.date     "opened_date"
    t.date     "due_date"
    t.string   "expected_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "work_orders", ["SalesOrder_id"], name: "index_work_orders_on_SalesOrder_id"

end
