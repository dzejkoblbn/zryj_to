class CreatePracownicy < ActiveRecord::Migration[5.0]
  def change
    create_table :pracownicy do |t|
      t.string :index

      t.timestamps
    end
  end
end
