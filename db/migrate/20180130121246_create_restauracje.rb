class CreateRestauracje < ActiveRecord::Migration[5.0]
  def change
    create_table :restauracje do |t|
      t.string :index
      t.references :pracownicy, foreign_key: true

      t.timestamps
    end
  end
end
