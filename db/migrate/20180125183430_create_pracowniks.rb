class CreatePracowniks < ActiveRecord::Migration
  def change
    create_table :pracowniks do |t|
      t.string :index
      t.string :name

      t.timestamps null: false
    end
  end
end
