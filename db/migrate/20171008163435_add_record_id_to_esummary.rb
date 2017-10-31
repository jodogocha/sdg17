class AddRecordIdToEsummary < ActiveRecord::Migration[5.0]
  def change
    add_reference :esummaries, :record, foreign_key: true
  end
end
