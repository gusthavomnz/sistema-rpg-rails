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

ActiveRecord::Schema[8.1].define(version: 2026_05_14_194249) do
  create_table "ficha_de_statuses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "defesa"
    t.integer "forca"
    t.bigint "id_personagem_id", null: false
    t.integer "inteligencia"
    t.integer "mana"
    t.datetime "updated_at", null: false
    t.integer "vida"
    t.index ["id_personagem_id"], name: "index_ficha_de_statuses_on_id_personagem_id"
  end

  create_table "guerreiros", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "forca_base"
    t.bigint "id_personagem_id", null: false
    t.string "tipo_arma_preferida"
    t.datetime "updated_at", null: false
    t.index ["id_personagem_id"], name: "index_guerreiros_on_id_personagem_id"
  end

  create_table "inventarios", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "capacidade_maxima"
    t.datetime "created_at", null: false
    t.integer "euro"
    t.datetime "updated_at", null: false
  end

  create_table "items", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "id_inventario_id", null: false
    t.string "nome"
    t.decimal "peso", precision: 10
    t.string "raridade"
    t.string "tipo"
    t.datetime "updated_at", null: false
    t.index ["id_inventario_id"], name: "index_items_on_id_inventario_id"
  end

  create_table "magos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "escola_magia"
    t.bigint "id_personagem_id", null: false
    t.integer "mana_base"
    t.datetime "updated_at", null: false
    t.index ["id_personagem_id"], name: "index_magos_on_id_personagem_id"
  end

  create_table "missaos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "descricao"
    t.string "raridade"
    t.integer "recompensa_xp"
    t.string "titulo"
    t.datetime "updated_at", null: false
  end

  create_table "personagem_missaos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "id_missao_id", null: false
    t.bigint "id_personagem_id", null: false
    t.datetime "updated_at", null: false
    t.index ["id_missao_id"], name: "index_personagem_missaos_on_id_missao_id"
    t.index ["id_personagem_id"], name: "index_personagem_missaos_on_id_personagem_id"
  end

  create_table "personagems", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "id_inventario_id", null: false
    t.integer "nivel"
    t.string "nome"
    t.datetime "updated_at", null: false
    t.index ["id_inventario_id"], name: "index_personagems_on_id_inventario_id"
  end

  add_foreign_key "ficha_de_statuses", "personagems", column: "id_personagem_id"
  add_foreign_key "guerreiros", "personagems", column: "id_personagem_id"
  add_foreign_key "items", "inventarios", column: "id_inventario_id"
  add_foreign_key "magos", "personagems", column: "id_personagem_id"
  add_foreign_key "personagem_missaos", "missaos", column: "id_missao_id"
  add_foreign_key "personagem_missaos", "personagems", column: "id_personagem_id"
  add_foreign_key "personagems", "inventarios", column: "id_inventario_id"
end
