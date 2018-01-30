class CreateUlice < ActiveRecord::Migration[5.0]
  def change
    create_table :ulice do |t|
      t.string :index

      t.timestamps
    end
  end
end
