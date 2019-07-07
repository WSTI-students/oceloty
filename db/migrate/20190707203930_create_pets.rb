class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.string :breed
      t.string :type
      t.string :size
      t.text :description

      t.timestamps
    end
  end
end
