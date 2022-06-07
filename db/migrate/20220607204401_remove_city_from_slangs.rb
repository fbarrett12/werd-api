class RemoveCityFromSlangs < ActiveRecord::Migration[6.0]
  def change

    remove_column :slangs, :city, :string
  end
end
