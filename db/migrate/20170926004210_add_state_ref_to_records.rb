class AddStateRefToRecords < ActiveRecord::Migration[5.0]
  def change
    add_reference :records, :state, foreign_key: true
  end
end
