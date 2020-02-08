class CreateSlangs < ActiveRecord::Migration[6.0]
  def change
    create_table :slangs do |t|
      t.text :term
      t.text :definition

      t.timestamps
    end
  end
end
