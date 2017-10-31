class CreateResolutions < ActiveRecord::Migration[5.0]
  def change
    create_table :resolutions do |t|
      t.date :fecha
      t.string :numero, limit: 50
      t.text :visto
      t.text :considerando
      t.text :resuelve

      t.timestamps
    end
  end
end
