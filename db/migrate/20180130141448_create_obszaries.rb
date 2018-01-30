class CreateObszaries < ActiveRecord::Migration[5.0]
  def change
    create_table :obszaries do |t|
      t.integer :id_obszaru
      t.string :nazwa_obszaru
      t.references :restauracje, foreign_key: true

      t.timestamps
    end
  end
end
