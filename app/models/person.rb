class Person < ApplicationRecord
	resourcify
	audited
	has_many :records
    belongs_to :tpersona
    has_one :user
	validates :nombre, :ruc_ci, :correo, :direccion, :presence => { message: "Campo obligatorio" }
	validates :ruc_ci , :correo, :uniqueness => true
	def numero
    	"#{self.ruc_ci}"
  	end
end
