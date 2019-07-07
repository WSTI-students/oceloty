class CreateShelters < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.string :name
      t.text :adress
      t.text :opening_hours
      t.string :telephone
      t.string :account_number

      t.timestamps
    end
  end
end
