class ChangeTypeNumExpediente < ActiveRecord::Migration[5.0]
  def up
    change_table :records do |t|
      t.change :num_expediente, :string
    end
  end
#cambiar tipo de dato
  def down
    change_table :records do |t|
      t.change :num_expediente, :decimal
    end
  end
end
