class Role < ApplicationRecord
	audited
	has_many :role_actions, :dependent => :destroy
	has_many :actions, through: :role_actions
    has_many :user

    def name_role?(role)
	   if self.role.name == role 
	      return true     
	    else
	      return false
	    end
  	end
end
