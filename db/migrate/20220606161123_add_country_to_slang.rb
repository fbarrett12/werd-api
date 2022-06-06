class AddCountryToSlang < ActiveRecord::Migration[6.0]
  def change
    add_column :slangs, :country, :string
  end
end
