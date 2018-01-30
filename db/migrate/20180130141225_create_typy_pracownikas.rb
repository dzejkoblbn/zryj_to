class CreateTypyPracownikas < ActiveRecord::Migration[5.0]
  def change
    create_table :typy_pracownikas do |t|
      t.integer :id_typu
      t.string :nazwa_typu
      t.references :pracownicy, foreign_key: true

      t.timestamps
    end
  end
end
