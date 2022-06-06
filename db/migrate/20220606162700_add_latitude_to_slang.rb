class AddLatitudeToSlang < ActiveRecord::Migration[6.0]
  def change
    add_column :slangs, :latitude, :string
  end
end
