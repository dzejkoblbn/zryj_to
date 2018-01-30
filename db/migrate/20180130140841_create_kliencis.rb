class CreateKliencis < ActiveRecord::Migration[5.0]
  def change
    create_table :kliencis do |t|
      t.integer :id_klienta
      t.string :imie
      t.string :nazwisko
      t.string :ulica
      t.string :kod_pocztowy
      t.string :numer_lokalu
      t.references :zamowienia, foreign_key: true

      t.timestamps
    end
  end
end
