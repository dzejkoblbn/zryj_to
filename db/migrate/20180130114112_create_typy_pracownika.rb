class CreateTypyPracownika < ActiveRecord::Migration[5.0]
  def change
    create_table :typy_pracownika do |t|
      t.string :index
      t.references :pracownicy, foreign_key: true

      t.timestamps
    end
  end
end
