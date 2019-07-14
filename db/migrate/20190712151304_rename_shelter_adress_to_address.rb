class RenameShelterAdressToAddress < ActiveRecord::Migration[5.2]
  def change
    rename_column :shelters, :adress, :address
  end
end
