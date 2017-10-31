class State < ApplicationRecord
	audited
	resourcify
	belongs_to :record
	validates :nombre, :presence => { message: "Campo obligatorio" }
	validates :nombre , :uniqueness => true
end
