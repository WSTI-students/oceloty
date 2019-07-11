class AddColumnsToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :record_numbers, :boolean
    add_column :pets, :addapted_child, :boolean
    add_column :pets, :allergies, :boolean
    add_column :pets, :chip, :boolean
    add_column :pets, :another_dog, :boolean
    add_column :pets, :another_cat, :boolean
    add_column :pets, :sterylization, :boolean
  end
end
