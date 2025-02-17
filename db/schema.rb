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

ActiveRecord::Schema[7.2].define(version: 2024_06_14_123209) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entradas", force: :cascade do |t|
    t.float "valorPlanejado"
    t.float "valorTotal"
    t.float "valorTaxa"
    t.datetime "vencimento"
    t.string "descricao"
    t.integer "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "categoria_id", null: false
    t.index ["categoria_id"], name: "index_entradas_on_categoria_id"
    t.index ["user_id"], name: "index_entradas_on_user_id"
  end

  create_table "saidas", force: :cascade do |t|
    t.float "valorPlanejado"
    t.float "valorTotal"
    t.float "valorTaxa"
    t.datetime "vencimento"
    t.string "descricao"
    t.integer "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "categoria_id", null: false
    t.index ["categoria_id"], name: "index_saidas_on_categoria_id"
    t.index ["user_id"], name: "index_saidas_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "entradas", "categoria", column: "categoria_id"
  add_foreign_key "entradas", "users"
  add_foreign_key "saidas", "categoria", column: "categoria_id"
  add_foreign_key "saidas", "users"
end
