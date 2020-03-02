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

ActiveRecord::Schema.define(version: 2020_03_02_224218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "emails", force: :cascade do |t|
    t.string "path", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "emails_tokens", id: false, force: :cascade do |t|
    t.bigint "token_id", null: false
    t.bigint "email_id", null: false
    t.index ["email_id", "token_id"], name: "index_emails_tokens_on_email_id_and_token_id", unique: true
    t.index ["token_id", "email_id"], name: "index_emails_tokens_on_token_id_and_email_id", unique: true
  end

  create_table "tokens", force: :cascade do |t|
    t.string "word", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["word"], name: "index_tokens_on_word"
  end

end
