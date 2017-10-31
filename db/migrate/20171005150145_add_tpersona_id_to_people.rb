class AddTpersonaIdToPeople < ActiveRecord::Migration[5.0]
  def change
    add_reference :people, :tpersona, foreign_key: true
  end
end
