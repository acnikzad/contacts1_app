class RenameLatLng < ActiveRecord::Migration[6.0]
  def change
  
    remove_column :contacts, :latitude, :string
    remove_column :contacts, :longitude, :string

  end
end
