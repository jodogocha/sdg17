class AddRecordToResolutions < ActiveRecord::Migration[5.0]
  def change
    add_reference :resolutions, :record, foreign_key: true
  end
end
