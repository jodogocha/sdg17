class Action < ApplicationRecord
	has_many :role_actions, :dependent => :destroy
	has_many :roles, through: :role_actions
end
