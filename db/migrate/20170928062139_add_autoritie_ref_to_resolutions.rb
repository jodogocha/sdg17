class AddAutoritieRefToResolutions < ActiveRecord::Migration[5.0]
  def change
    add_reference :resolutions, :autoritie, foreign_key: true
  end
end
