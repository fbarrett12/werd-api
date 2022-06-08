class RemoveStateFromSlangs < ActiveRecord::Migration[6.0]
  def change

    remove_column :slangs, :state, :string
  end
end
