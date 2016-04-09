class AddLocationToEvents < ActiveRecord::Migration
  def change
    add_column :events, :longitude, :float
    add_column :events, :latitude, :time
  end
end
