# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_30_065313) do

  create_table "authors", force: :cascade do |t|
    t.string "author_name"
    t.string "city"
    t.integer "mobile_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "book_ragisters", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "student_id", null: false
    t.datetime "assign_date"
    t.datetime "due_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "library_id"
    t.datetime "return_date"
    t.index ["book_id"], name: "index_book_ragisters_on_book_id"
    t.index ["library_id"], name: "index_book_ragisters_on_library_id"
    t.index ["student_id"], name: "index_book_ragisters_on_student_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "book_name"
    t.integer "author_id", null: false
    t.integer "library_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["library_id"], name: "index_books_on_library_id"
  end

  create_table "chapters", force: :cascade do |t|
    t.string "chapter_name"
    t.integer "book_id", null: false
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_chapters_on_book_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "library_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "student_name"
    t.string "class1"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.integer "student_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["student_id"], name: "index_users_on_student_id"
  end

  add_foreign_key "book_ragisters", "books"
  add_foreign_key "book_ragisters", "libraries"
  add_foreign_key "book_ragisters", "students"
  add_foreign_key "books", "authors"
  add_foreign_key "books", "libraries"
  add_foreign_key "chapters", "books"
  add_foreign_key "users", "students"
end
