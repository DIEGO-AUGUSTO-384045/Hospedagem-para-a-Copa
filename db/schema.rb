# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111120181845) do

  create_table "cidades", :force => true do |t|
    t.string   "nome",          :limit => 50, :null => false
    t.date     "data_fundacao"
    t.float    "area"
    t.integer  "populacao"
    t.float    "altitude"
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foto_cidades", :force => true do |t|
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foto_imovels", :force => true do |t|
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imovels", :force => true do |t|
    t.float    "valor"
    t.string   "endereco"
    t.integer  "qtde_comodos"
    t.integer  "Foto_Imovel_id"
    t.integer  "Cidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mensagem_fale_conoscos", :force => true do |t|
    t.string   "remetente",  :limit => 50, :null => false
    t.string   "email",      :limit => 50, :null => false
    t.string   "assunto",    :limit => 40, :null => false
    t.text     "mensagem",                 :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pais", :force => true do |t|
    t.string   "nome",       :limit => 50, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
