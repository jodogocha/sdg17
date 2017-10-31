class AddResolutionTypeRefToResolutions < ActiveRecord::Migration[5.0]
  def change
    add_reference :resolutions, :resolutions_type, foreign_key: true
  end
end
