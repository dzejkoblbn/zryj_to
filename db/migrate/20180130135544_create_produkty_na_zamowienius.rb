class CreateProduktyNaZamowienius < ActiveRecord::Migration[5.0]
  def change
    create_table :produkty_na_zamowienius do |t|
      t.integer :liczba_sztuk

      t.timestamps
    end
  end
end
