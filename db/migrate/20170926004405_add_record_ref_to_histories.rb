class AddRecordRefToHistories < ActiveRecord::Migration[5.0]
  def change
    add_reference :histories, :record, foreign_key: true
  end
end
