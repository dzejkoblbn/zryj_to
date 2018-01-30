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

ActiveRecord::Schema.define(version: 20180130180343) do

  create_table "kliencis", force: :cascade do |t|
    t.integer  "id_klienta"
    t.string   "imie"
    t.string   "nazwisko"
    t.string   "ulica"
    t.string   "kod_pocztowy"
    t.string   "numer_lokalu"
    t.integer  "zamowienia_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["id_klienta"], name: "index_kliencis_on_id_klienta", unique: true
    t.index ["zamowienia_id"], name: "index_kliencis_on_zamowienia_id"
  end

  create_table "obszaries", force: :cascade do |t|
    t.integer  "id_obszaru"
    t.string   "nazwa_obszaru"
    t.integer  "restauracje_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["restauracje_id"], name: "index_obszaries_on_restauracje_id"
  end

  create_table "pracownicies", force: :cascade do |t|
    t.integer  "id_pracownika"
    t.string   "imie"
    t.string   "nazwisko"
    t.float    "zarobki"
    t.integer  "zamowienia_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["zamowienia_id"], name: "index_pracownicies_on_zamowienia_id"
  end

  create_table "produkties", force: :cascade do |t|
    t.integer  "id_produktu"
    t.string   "nazwa"
    t.float    "cena"
    t.integer  "czas_przygotowania"
    t.integer  "produkty_na_zamowieniu_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["produkty_na_zamowieniu_id"], name: "index_produkties_on_produkty_na_zamowieniu_id"
  end

  create_table "produkty_na_zamowienius", force: :cascade do |t|
    t.integer  "liczba_sztuk"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "restauracjes", force: :cascade do |t|
    t.integer  "id_restauracji"
    t.string   "nazwa"
    t.string   "ulica"
    t.string   "numer_lokalu"
    t.string   "kod_pocztowy"
    t.integer  "pracownicy_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["pracownicy_id"], name: "index_restauracjes_on_pracownicy_id"
  end

  create_table "typy_pracownikas", force: :cascade do |t|
    t.integer  "id_typu"
    t.string   "nazwa_typu"
    t.integer  "pracownicy_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["pracownicy_id"], name: "index_typy_pracownikas_on_pracownicy_id"
  end

  create_table "ulices", force: :cascade do |t|
    t.integer  "id_ulicy"
    t.string   "ulica"
    t.string   "kod_pocztowy"
    t.string   "numer_lokalu"
    t.integer  "obszary_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["obszary_id"], name: "index_ulices_on_obszary_id"
  end

  create_table "zamowienias", force: :cascade do |t|
    t.integer  "id_zamowienia"
    t.integer  "czas_realizacji"
    t.integer  "produkty_na_zamowieniu_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["produkty_na_zamowieniu_id"], name: "index_zamowienias_on_produkty_na_zamowieniu_id"
  end

end
