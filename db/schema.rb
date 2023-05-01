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

ActiveRecord::Schema.define(version: 20_230_501_054_503) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'categories', force: :cascade do |t|
    t.string 'name'
    t.string 'description'
    t.bigint 'restaurant_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['restaurant_id'], name: 'index_categories_on_restaurant_id'
  end

  create_table 'category_items', force: :cascade do |t|
    t.bigint 'category_id', null: false
    t.string 'name'
    t.string 'price'
    t.string 'description'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['category_id'], name: 'index_category_items_on_category_id'
  end

  create_table 'restaurants', force: :cascade do |t|
    t.string 'name'
    t.string 'slug'
    t.string 'description'
    t.string 'location'
    t.string 'contact'
    t.string 'payment_key_id'
    t.string 'payment_key_secret'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'categories', 'restaurants'
  add_foreign_key 'category_items', 'categories'
end
