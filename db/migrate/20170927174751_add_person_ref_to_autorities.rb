class AddPersonRefToAutorities < ActiveRecord::Migration[5.0]
  def change
    add_reference :autorities, :person, foreign_key: true
  end
end
