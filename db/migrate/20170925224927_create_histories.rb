class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.date :fecha

      t.timestamps
    end
  end
end
