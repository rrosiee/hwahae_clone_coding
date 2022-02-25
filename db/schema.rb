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

ActiveRecord::Schema.define(version: 2021_12_06_185759) do

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.date "date"
    t.text "comment_text"
    t.bigint "user_id"
    t.bigint "content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_comments_on_content_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "contents", force: :cascade do |t|
    t.string "content_title"
    t.text "content_content"
    t.string "editor_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coupon_lists", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_coupon_lists_on_user_id"
  end

  create_table "coupons", force: :cascade do |t|
    t.date "valid_type"
    t.integer "sale_persent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "brand_name"
    t.string "event_title"
    t.text "event_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hwahae_carts", force: :cascade do |t|
    t.integer "product_count"
    t.bigint "user_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_hwahae_carts_on_product_id"
    t.index ["user_id"], name: "index_hwahae_carts_on_user_id"
  end

  create_table "hwahae_comments", force: :cascade do |t|
    t.date "date"
    t.text "comment_text"
    t.bigint "user_id"
    t.bigint "hwahae_content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hwahae_content_id"], name: "index_hwahae_comments_on_hwahae_content_id"
    t.index ["user_id"], name: "index_hwahae_comments_on_user_id"
  end

  create_table "hwahae_contents", force: :cascade do |t|
    t.string "content_title"
    t.text "content_content"
    t.string "editor_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hwahae_coupons", force: :cascade do |t|
    t.date "valid_type"
    t.integer "sale_persent"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "couponname"
    t.index ["user_id"], name: "index_hwahae_coupons_on_user_id"
  end

  create_table "hwahae_orders", force: :cascade do |t|
    t.integer "order_account"
    t.date "order_date"
    t.string "order_type"
    t.bigint "user_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_hwahae_orders_on_product_id"
    t.index ["user_id"], name: "index_hwahae_orders_on_user_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "ingredient_name"
    t.string "good_or_bad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jangs", force: :cascade do |t|
    t.integer "product_count"
    t.bigint "product_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_jangs_on_order_id"
    t.index ["product_id"], name: "index_jangs_on_product_id"
  end

  create_table "oders", force: :cascade do |t|
    t.integer "o_count"
    t.bigint "user_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_oders_on_product_id"
    t.index ["user_id"], name: "index_oders_on_user_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "order_account"
    t.bigint "order_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_details_on_order_id"
    t.index ["product_id"], name: "index_order_details_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "order_date"
    t.string "payment_plan"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_reviews", force: :cascade do |t|
    t.text "review_comment"
    t.bigint "product_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_reviews_on_product_id"
    t.index ["user_id"], name: "index_product_reviews_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.integer "price"
    t.integer "sale_price"
    t.string "ingredient"
    t.text "product_detail"
    t.integer "point"
    t.integer "delivery_price"
    t.string "category_name"
    t.string "brand_name"
    t.integer "category_rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rank_pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_requests_on_event_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shopping_carts_on_user_id"
  end

  create_table "shopping_detail_carts", force: :cascade do |t|
    t.integer "detail_cart_count"
    t.bigint "product_id"
    t.bigint "shopping_cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_shopping_detail_carts_on_product_id"
    t.index ["shopping_cart_id"], name: "index_shopping_detail_carts_on_shopping_cart_id"
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
    t.string "sex"
    t.string "user_name"
    t.string "phone_number"
    t.string "address"
    t.string "children_or_not"
    t.integer "age"
    t.string "skin_type"
    t.string "worries_about_skin"
    t.integer "point"
    t.bigint "user_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_id"], name: "index_users_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "comments", "contents"
  add_foreign_key "comments", "users"
  add_foreign_key "coupon_lists", "users"
  add_foreign_key "hwahae_carts", "products"
  add_foreign_key "hwahae_carts", "users"
  add_foreign_key "hwahae_comments", "hwahae_contents"
  add_foreign_key "hwahae_comments", "users"
  add_foreign_key "hwahae_coupons", "users"
  add_foreign_key "hwahae_orders", "products"
  add_foreign_key "hwahae_orders", "users"
  add_foreign_key "jangs", "orders"
  add_foreign_key "jangs", "products"
  add_foreign_key "oders", "products"
  add_foreign_key "oders", "users"
  add_foreign_key "order_details", "orders"
  add_foreign_key "order_details", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "product_reviews", "products"
  add_foreign_key "product_reviews", "users"
  add_foreign_key "requests", "events"
  add_foreign_key "requests", "users"
  add_foreign_key "shopping_carts", "users"
  add_foreign_key "shopping_detail_carts", "products"
  add_foreign_key "shopping_detail_carts", "shopping_carts"
  add_foreign_key "users", "users"
end
