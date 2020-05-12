class CreateEncTests < ActiveRecord::Migration
  def change
    create_table :enc_tests do |t|
      t.string :encrypted_password
      t.string :encrypted_password_salt
      t.string :encrypted_password_iv

      t.timestamps null: false
    end
  end
end
