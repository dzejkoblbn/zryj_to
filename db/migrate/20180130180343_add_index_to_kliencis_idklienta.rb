class AddIndexToKliencisIdklienta < ActiveRecord::Migration[5.0]
  def change
    add_index :kliencis, :id_klienta, unique: true
  end
end
