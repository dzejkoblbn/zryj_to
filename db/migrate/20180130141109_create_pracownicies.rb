class CreatePracownicies < ActiveRecord::Migration[5.0]
  def change
    create_table :pracownicies do |t|
      t.integer :id_pracownika
      t.string :imie
      t.string :nazwisko
      t.float :zarobki
      t.references :zamowienia, foreign_key: true

      t.timestamps
    end
  end
end
