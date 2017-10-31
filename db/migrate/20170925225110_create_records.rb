class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.date :fecha
      t.numeric :num_expediente
      t.text :responsable
      t.text :observacion
      t.text :descripcion
      t.references :origen
      t.references :destino

      t.timestamps
    end
    add_foreign_key :records , :dependencies, column: :origen_id , primary_key: :id
  
    add_foreign_key :records , :dependencies, column: :destino_id , primary_key: :id
  end
end
