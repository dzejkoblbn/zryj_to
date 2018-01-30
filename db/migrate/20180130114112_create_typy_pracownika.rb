class CreateTypyPracownika < ActiveRecord::Migration[5.0]
  def change
    create_table :typy_pracownika do |t|
      t.string :index

      t.timestamps
    end
  end
end
