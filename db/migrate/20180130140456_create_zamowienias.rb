class CreateZamowienias < ActiveRecord::Migration[5.0]
  def change
    create_table :zamowienias do |t|
      t.integer :id_zamowienia
      t.integer :czas_realizacji
      t.references :produkty_na_zamowieniu, foreign_key: true

      t.timestamps
    end
  end
end
