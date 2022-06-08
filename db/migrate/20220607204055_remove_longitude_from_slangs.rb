class RemoveLongitudeFromSlangs < ActiveRecord::Migration[6.0]
  def change

    remove_column :slangs, :longitude, :string
  end
end
