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

ActiveRecord::Schema.define(version: 2018_08_31_204617) do

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

  create_table "atletas", force: :cascade do |t|
    t.string "nome"
    t.string "nacionalidade"
    t.string "naturalidade"
    t.date "data_nascimento"
    t.integer "sexo"
    t.string "cpf"
    t.string "rg"
    t.string "email"
    t.string "passaporte"
    t.date "validade_passaporte"
    t.integer "tipo_sanguineo_id"
    t.string "licenca_cbc"
    t.string "codigo_uci"
    t.string "nome_mae"
    t.string "nome_pai"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.string "cep"
    t.string "cidade"
    t.string "uf"
    t.string "telefone_residencial"
    t.string "telefone_celular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.string "clube"
  end

  create_table "audits", force: :cascade do |t|
    t.integer "auditable_id"
    t.string "auditable_type"
    t.integer "associated_id"
    t.string "associated_type"
    t.integer "user_id"
    t.string "user_type"
    t.string "username"
    t.string "action"
    t.text "audited_changes"
    t.integer "version", default: 0
    t.string "comment"
    t.string "remote_address"
    t.string "request_uuid"
    t.datetime "created_at"
    t.index ["associated_type", "associated_id"], name: "associated_index"
    t.index ["auditable_type", "auditable_id", "version"], name: "auditable_index"
    t.index ["created_at"], name: "index_audits_on_created_at"
    t.index ["request_uuid"], name: "index_audits_on_request_uuid"
    t.index ["user_id", "user_type"], name: "user_index"
  end

  create_table "bateria_detalhes", force: :cascade do |t|
    t.bigint "bateria_id"
    t.bigint "inscricao_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "raia_1"
    t.integer "raia_2"
    t.integer "raia_3"
    t.integer "resultado_1"
    t.integer "resultado_2"
    t.integer "resultado_3"
    t.integer "resultado_geral"
    t.integer "pontos"
    t.boolean "classificado"
    t.index ["bateria_id"], name: "index_bateria_detalhes_on_bateria_id"
    t.index ["inscricao_id"], name: "index_bateria_detalhes_on_inscricao_id"
  end

  create_table "baterias", force: :cascade do |t|
    t.bigint "tipo_bateria_id"
    t.integer "numero"
    t.bigint "campeonato_detalhe_id"
    t.text "complemento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campeonato_detalhe_id"], name: "index_baterias_on_campeonato_detalhe_id"
    t.index ["tipo_bateria_id"], name: "index_baterias_on_tipo_bateria_id"
  end

  create_table "campeonato_detalhes", force: :cascade do |t|
    t.bigint "categoria_id"
    t.bigint "etapa_id"
    t.bigint "campeonato_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ordem"
    t.index ["campeonato_id"], name: "index_campeonato_detalhes_on_campeonato_id"
    t.index ["categoria_id"], name: "index_campeonato_detalhes_on_categoria_id"
    t.index ["etapa_id"], name: "index_campeonato_detalhes_on_etapa_id"
  end

  create_table "campeonatos", force: :cascade do |t|
    t.string "titulo"
    t.string "descricao"
    t.integer "qtd_etapa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorias", force: :cascade do |t|
    t.string "descricao"
    t.integer "idade_minima"
    t.integer "idade_maxima"
    t.boolean "livre"
    t.bigint "tipo_categoria_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "genero"
    t.boolean "oficial"
    t.index ["tipo_categoria_id"], name: "index_categorias_on_tipo_categoria_id"
  end

  create_table "etapas", force: :cascade do |t|
    t.string "descricao"
    t.string "data"
    t.string "cidade"
    t.string "uf"
    t.bigint "campeonato_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campeonato_id"], name: "index_etapas_on_campeonato_id"
  end

  create_table "inscricoes", force: :cascade do |t|
    t.bigint "atleta_id"
    t.bigint "categoria_id"
    t.bigint "etapa_id"
    t.boolean "confirmado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "placa"
    t.datetime "deleted_at"
    t.index ["atleta_id"], name: "index_inscricoes_on_atleta_id"
    t.index ["categoria_id"], name: "index_inscricoes_on_categoria_id"
    t.index ["etapa_id"], name: "index_inscricoes_on_etapa_id"
  end

  create_table "tipo_baterias", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_categorias", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_sanguineos", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "bateria_detalhes", "baterias"
  add_foreign_key "bateria_detalhes", "inscricoes"
  add_foreign_key "baterias", "campeonato_detalhes"
  add_foreign_key "baterias", "tipo_baterias"
  add_foreign_key "campeonato_detalhes", "campeonatos"
  add_foreign_key "campeonato_detalhes", "categorias"
  add_foreign_key "campeonato_detalhes", "etapas"
  add_foreign_key "categorias", "tipo_categorias"
  add_foreign_key "etapas", "campeonatos"
  add_foreign_key "inscricoes", "atletas"
  add_foreign_key "inscricoes", "categorias"
  add_foreign_key "inscricoes", "etapas"
end
