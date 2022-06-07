class RemoveLatitudeFromSlangs < ActiveRecord::Migration[6.0]
  def change

    remove_column :slangs, :latitude, :string
  end
end
