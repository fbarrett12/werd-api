class AddLocationToSlangs < ActiveRecord::Migration[6.0]
  def change
    add_reference :slangs, :location, null: true, foreign_key: true
  end
end
