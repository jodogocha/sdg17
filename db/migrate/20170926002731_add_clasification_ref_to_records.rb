class AddClasificationRefToRecords < ActiveRecord::Migration[5.0]
  def change
    add_reference :records, :clasification, foreign_key: true
  end
end
