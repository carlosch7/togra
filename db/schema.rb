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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141202035032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grupos", force: true do |t|
    t.string   "famil"
    t.string   "dir"
    t.string   "tel"
    t.string   "tipcasa"
    t.string   "estrato"
    t.boolean  "serv"
    t.string   "tipserv"
    t.string   "habit"
    t.string   "picasa"
    t.string   "murcasa"
    t.string   "basura"
    t.string   "eqcoc"
    t.string   "eqsal"
    t.string   "eqhabi"
    t.string   "eqcom"
    t.integer  "locate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locates", force: true do |t|
    t.string   "departamento"
    t.string   "municipio"
    t.string   "gobernador"
    t.string   "alcalde"
    t.date     "fecha_inicio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "otras", force: true do |t|
    t.string   "fuenteingre"
    t.string   "cualfuen"
    t.boolean  "cuentab"
    t.string   "numcuent"
    t.boolean  "tarjetdc"
    t.string   "cuantarj"
    t.boolean  "prestam"
    t.string   "tipoprestamo"
    t.integer  "grupo_id"
    t.integer  "locate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", force: true do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.string   "sexo"
    t.string   "cedula"
    t.string   "lugfam"
    t.string   "nivestu"
    t.string   "titul"
    t.string   "servsalud"
    t.string   "cajcomp"
    t.string   "pension"
    t.string   "etnia"
    t.string   "actiecom"
    t.boolean  "gruporel"
    t.string   "cualgrup"
    t.string   "sectortrab"
    t.integer  "grupo_id"
    t.integer  "otra_id"
    t.integer  "locate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
