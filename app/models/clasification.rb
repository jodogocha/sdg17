class Clasification < ApplicationRecord
	resourcify
	has_one :record
	validates :nombre, :presence => { message: "Campo obligatorio" }
	validates :nombre , :uniqueness => true
end
