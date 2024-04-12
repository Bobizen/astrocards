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

ActiveRecord::Schema[7.0].define(version: 2024_04_12_142731) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "cards", force: :cascade do |t|
    t.string "object_type", null: false
    t.bigint "object_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["object_type", "object_id"], name: "index_cards_on_object"
  end

  create_table "gallerysupports", force: :cascade do |t|
    t.string "name"
    t.string "image_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "name_en"
    t.string "image_path"
    t.string "name_fr"
    t.string "name_ch_simplified"
    t.string "name_ch_pinyin"
    t.string "classification"
    t.integer "number_satellites"
    t.text "summary"
    t.text "funfact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "revolution"
    t.float "rotation"
    t.string "distance_from_star"
    t.bigint "star_id", null: false
    t.text "average_distance_to_earth"
    t.text "main_moon"
    t.index ["star_id"], name: "index_planets_on_star_id"
  end

  create_table "satellites", force: :cascade do |t|
    t.string "name_en"
    t.string "image_path"
    t.string "name_fr"
    t.string "name_ch_simplified"
    t.string "name_ch_pinyin"
    t.string "classification"
    t.text "summary"
    t.text "funfact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "revolution"
    t.float "rotation"
    t.string "distance_from_planet"
    t.bigint "planet_id", null: false
    t.text "average_distance_to_earth"
    t.text "main_moon"
    t.index ["planet_id"], name: "index_satellites_on_planet_id"
  end

  create_table "specials", force: :cascade do |t|
    t.string "name_en"
    t.string "name_fr"
    t.string "name_ch_simplified"
    t.string "name_ch_pinyin"
    t.string "image_path"
    t.string "card_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "summary"
    t.text "funfact"
    t.integer "moon_count"
    t.date "first_discoveries"
    t.text "featured_moons"
  end

  create_table "stars", force: :cascade do |t|
    t.string "name_en"
    t.string "image_path"
    t.string "name_fr"
    t.string "name_ch_simplified"
    t.string "name_ch_pinyin"
    t.string "classification"
    t.integer "number_planets"
    t.text "summary"
    t.text "funfact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "revolution"
    t.float "rotation"
    t.text "main_moon"
    t.float "average_distance_to_earth"
  end

  create_table "usercards", force: :cascade do |t|
    t.bigint "card_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "seen", default: true
    t.index ["card_id"], name: "index_usercards_on_card_id"
    t.index ["user_id"], name: "index_usercards_on_user_id"
  end

  create_table "usergalleries", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.boolean "shared"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_usergalleries_on_user_id"
  end

  create_table "usergallerycards", force: :cascade do |t|
    t.bigint "usergallerie_id", null: false
    t.bigint "usercard_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usercard_id"], name: "index_usergallerycards_on_usercard_id"
    t.index ["usergallerie_id"], name: "index_usergallerycards_on_usergallerie_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.date "birthdate"
    t.boolean "privacy_statement"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usersupports", force: :cascade do |t|
    t.bigint "usergallerycard_id", null: false
    t.bigint "gallerysupport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gallerysupport_id"], name: "index_usersupports_on_gallerysupport_id"
    t.index ["usergallerycard_id"], name: "index_usersupports_on_usergallerycard_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "planets", "stars"
  add_foreign_key "satellites", "planets"
  add_foreign_key "usercards", "cards"
  add_foreign_key "usercards", "users"
  add_foreign_key "usergalleries", "users"
  add_foreign_key "usergallerycards", "usercards"
  add_foreign_key "usergallerycards", "usergalleries", column: "usergallerie_id"
  add_foreign_key "usersupports", "gallerysupports"
  add_foreign_key "usersupports", "usergallerycards"
end
