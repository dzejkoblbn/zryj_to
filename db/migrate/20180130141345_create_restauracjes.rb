class CreateRestauracjes < ActiveRecord::Migration[5.0]
  def change
    create_table :restauracjes do |t|
      t.integer :id_restauracji
      t.string :nazwa
      t.string :ulica
      t.string :numer_lokalu
      t.string :kod_pocztowy
      t.references :pracownicy, foreign_key: true

      t.timestamps
    end
  end
end
