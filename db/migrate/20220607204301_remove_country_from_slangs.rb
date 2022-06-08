class RemoveCountryFromSlangs < ActiveRecord::Migration[6.0]
  def change

    remove_column :slangs, :country, :string
  end
end
