class AddDeviseToShelter < ActiveRecord::Migration[5.2]
  def change
    change_table :shelters do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at
    end

    add_index :shelters, :email,                unique: true
    add_index :shelters, :reset_password_token, unique: true
  end
end
