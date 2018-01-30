class CreateUlice < ActiveRecord::Migration[5.0]
  def change
    create_table :ulice do |t|
      t.string :index
      t.references :obszary, foreign_key: true

      t.timestamps
    end
  end
end
