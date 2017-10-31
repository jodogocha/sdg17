class CreateResolutionsTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :resolutions_types do |t|
      t.string :nombre
      t.text :visto
      t.text :considerando
      t.text :resuelve

      t.timestamps
    end
  end
end
