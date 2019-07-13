class ModifyPetsColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :pets, :sex, :integer
    change_column :pets, :species, :integer
    change_column :pets, :size, :integer
  end
end
