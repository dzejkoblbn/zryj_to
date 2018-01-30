class CreateUlices < ActiveRecord::Migration[5.0]
  def change
    create_table :ulices do |t|
      t.integer :id_ulicy
      t.string :ulica
      t.string :kod_pocztowy
      t.string :numer_lokalu
      t.references :obszary, foreign_key: true

      t.timestamps
    end
  end
end
