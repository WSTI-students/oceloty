class RenamePetTypeToSpecies < ActiveRecord::Migration[5.2]
  def change
    rename_column :pets, :type, :species
  end
end
