class GeoCoder < ActiveRecord::Migration[6.0]
  def change

    add_column :contacts, :latitude, :string
    add_column :contacts, :longitude, :string

  end
end
