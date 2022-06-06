class AddCityToSlang < ActiveRecord::Migration[6.0]
  def change
    add_column :slangs, :city, :string
  end
end
