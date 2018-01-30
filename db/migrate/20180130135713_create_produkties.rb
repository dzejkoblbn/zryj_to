class CreateProdukties < ActiveRecord::Migration[5.0]
  def change
    create_table :produkties do |t|
      t.integer :id_produktu
      t.string :nazwa
      t.float :cena
      t.integer :czas_przygotowania
      t.references :produkty_na_zamowieniu, foreign_key: true

      t.timestamps
    end
  end
end
