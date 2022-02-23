# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_23_110107) do

  create_table "combos", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "combos_items", id: false, force: :cascade do |t|
    t.integer "combo_id", null: false
    t.integer "item_id", null: false
    t.index ["combo_id"], name: "index_combos_items_on_combo_id"
    t.index ["item_id"], name: "index_combos_items_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "description"
    t.decimal "price", default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer "store_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_menus_on_store_id"
  end

  create_table "menus_lists", force: :cascade do |t|
    t.integer "menu_id"
    t.string "listable_type"
    t.integer "listable_id"
    t.boolean "available", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["listable_type", "listable_id"], name: "index_menus_lists_on_listable"
    t.index ["menu_id"], name: "index_menus_lists_on_menu_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "contact_no"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "menus", "stores"
end
