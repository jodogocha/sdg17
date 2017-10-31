class CreateAutorities < ActiveRecord::Migration[5.0]
  def change
    create_table :autorities do |t|
      t.string :nombre, limit: 100

      t.timestamps
    end
  end
end
