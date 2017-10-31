class Resolution < ApplicationRecord
	resourcify 
	audited
	belongs_to :autoritie
	belongs_to :resolutions_type
	belongs_to :record
	validates :visto, :considerando, :resuelve, :presence => { message: "Campo obligatorio" }	
end
