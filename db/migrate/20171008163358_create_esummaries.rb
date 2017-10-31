class CreateEsummaries < ActiveRecord::Migration[5.0]
  def change
    create_table :esummaries do |t|

      t.timestamps
    end
  end
end
