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

ActiveRecord::Schema.define(version: 20170320190234) do

  create_table "clientes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome"
    t.string   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "despesas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "data"
    t.string   "valor"
    t.integer  "Materia_Prima_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["Materia_Prima_id"], name: "index_despesas_on_Materia_Prima_id", using: :btree
  end

  create_table "enderecos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "rua"
    t.string   "numero"
    t.string   "bairro"
    t.integer  "Cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Cliente_id"], name: "index_enderecos_on_Cliente_id", using: :btree
  end

  create_table "materia_primas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "valor"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "descricao"
    t.string   "valor"
    t.integer  "situacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "quantidade"
    t.integer  "valor"
    t.string   "data"
    t.string   "valor_unitario"
    t.integer  "situacao"
    t.integer  "Produto_id"
    t.integer  "Cliente_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["Cliente_id"], name: "index_vendas_on_Cliente_id", using: :btree
    t.index ["Produto_id"], name: "index_vendas_on_Produto_id", using: :btree
  end

  add_foreign_key "despesas", "Materia_Primas"
  add_foreign_key "enderecos", "Clientes"
  add_foreign_key "vendas", "Clientes"
  add_foreign_key "vendas", "Produtos"
end
