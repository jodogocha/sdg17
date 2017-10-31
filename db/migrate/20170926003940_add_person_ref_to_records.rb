class AddPersonRefToRecords < ActiveRecord::Migration[5.0]
  def change
    add_reference :records, :person, foreign_key: true
  end
end
