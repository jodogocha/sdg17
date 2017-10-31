class AddPersonRefToHistories < ActiveRecord::Migration[5.0]
  def change
    add_reference :histories, :person, foreign_key: true
  end
end
