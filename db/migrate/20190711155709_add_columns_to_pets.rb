class AddColumnsToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :record_numbers, :string
    add_column :pets, :children_friendly, :boolean
    add_column :pets, :allergic_friendly, :boolean
    add_column :pets, :microchip, :boolean
    add_column :pets, :dog_friendly, :boolean
    add_column :pets, :cat_friendly, :boolean
    add_column :pets, :sterilized, :boolean
  end
end
