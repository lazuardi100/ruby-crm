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

ActiveRecord::Schema[7.0].define(version: 2022_03_14_025935) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", primary_key: "id_customer", id: :serial, force: :cascade do |t|
    t.integer "id_product"
    t.integer "id_status"
    t.string "nama_customer"
    t.string "no_hp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", primary_key: "id_product", id: :serial, force: :cascade do |t|
    t.string "nama_product"
    t.integer "harga"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status_customers", primary_key: "id_status", id: :serial, force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 1
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
