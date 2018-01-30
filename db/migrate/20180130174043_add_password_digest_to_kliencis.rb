class AddPasswordDigestToKliencis < ActiveRecord::Migration[5.0]
  def change
    add_column :kliencis, :password_digest, :string
  end
end
