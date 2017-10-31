class User < ApplicationRecord
  audited
  rolify before_add: :before_add_method
  # has_and_belongs_to_many :roles, :join_table => :users_roles, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include ActiveRecord::Validations
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  

  belongs_to :person
  belongs_to :role

  def name_role?(role)
   if self.role.name == role 
      return true     
    else
      return false
    end
  end
  # Atributo virtual para engañar al sistema y muestre el nombre del usuario a ser creado
  def nombre_virtual
  	
  end
end
