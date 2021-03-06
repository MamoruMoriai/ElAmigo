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

ActiveRecord::Schema.define(version: 2019_03_22_064446) do

  create_table "blogs", force: :cascade do |t|
    t.string "title", null: false
    t.string "content", null: false
    t.date "time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.integer "category_id"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_genres_on_category_id"
  end

  create_table "menus", force: :cascade do |t|
    t.integer "category_id"
    t.integer "genre_id"
    t.string "name", null: false
    t.integer "price", null: false
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_menus_on_category_id"
    t.index ["genre_id"], name: "index_menus_on_genre_id"
  end

  create_table "sales", force: :cascade do |t|
    t.integer "seat_id"
    t.datetime "date", null: false
    t.integer "visitor", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seat_id"], name: "index_sales_on_seat_id"
  end

  create_table "seats", force: :cascade do |t|
    t.string "name", null: false
    t.integer "max", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "takes", force: :cascade do |t|
    t.integer "sale_id"
    t.integer "menu_id"
    t.integer "number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_takes_on_menu_id"
    t.index ["sale_id"], name: "index_takes_on_sale_id"
  end

end
