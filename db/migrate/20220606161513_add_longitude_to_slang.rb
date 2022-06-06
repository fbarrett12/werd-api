class AddLongitudeToSlang < ActiveRecord::Migration[6.0]
  def change
    add_column :slangs, :longitude, :string
  end
end
