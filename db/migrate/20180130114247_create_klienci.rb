class CreateKlienci < ActiveRecord::Migration[5.0]
  def change
    create_table :klienci do |t|
      t.string :index
      t.references :zamowienia, foreign_key: true

      t.timestamps
    end
  end
end
