class CreateProdukty < ActiveRecord::Migration[5.0]
  def change
    create_table :produkty do |t|
      t.string :index
      t.references :produkty_na_zamowieniu, foreign_key: true

      t.timestamps
    end
  end
end
