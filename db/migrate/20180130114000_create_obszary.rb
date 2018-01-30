class CreateObszary < ActiveRecord::Migration[5.0]
  def change
    create_table :obszary do |t|
      t.string :index

      t.timestamps
    end
  end
end
