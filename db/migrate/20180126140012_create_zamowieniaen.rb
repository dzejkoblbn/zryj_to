class CreateZamowieniaen < ActiveRecord::Migration[5.0]
  def change
    create_table :zamowieniaen do |t|
      t.string :name
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
