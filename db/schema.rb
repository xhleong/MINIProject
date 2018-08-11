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

ActiveRecord::Schema.define(version: 2018_08_10_072642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "company_name", null: false
    t.string "industry", null: false
    t.string "country", null: false
    t.string "company_reg", null: false
    t.string "contact_person", null: false
    t.string "contact_num", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country", "company_reg"], name: "index_companies_on_country_and_company_reg", unique: true
  end

end
