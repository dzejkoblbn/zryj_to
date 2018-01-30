class CreateProdukty < ActiveRecord::Migration[5.0]
  def change
    create_table :produkty do |t|
      t.string :index

      t.timestamps
    end
  end
end
