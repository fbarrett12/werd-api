class AddStateToSlang < ActiveRecord::Migration[6.0]
  def change
    add_column :slangs, :state, :string
  end
end
