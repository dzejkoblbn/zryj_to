class CreateZamowienia < ActiveRecord::Migration[5.0]
  def change
    create_table :zamowienia do |t|
      t.string :index

      t.timestamps
    end
  end
end
