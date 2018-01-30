class CreateProduktyNaZamowieniu < ActiveRecord::Migration[5.0]
  def change
    create_table :produkty_na_zamowieniu do |t|
      t.string :index

      t.timestamps
    end
  end
end
