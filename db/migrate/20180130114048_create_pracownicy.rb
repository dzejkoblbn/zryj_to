class CreatePracownicy < ActiveRecord::Migration[5.0]
  def change
    create_table :pracownicy do |t|
      t.string :index
      t.references :zamowienia, foreign_key: true

      t.timestamps
    end
  end
end
