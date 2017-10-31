class Dependency < ApplicationRecord
	resourcify
	audited
	has_many :origen_records, :class_name => 'Record', :foreign_key => 'origen_id'
    has_many :destino_records, :class_name => 'Record', :foreign_key => 'destino_id'
	validates :nombre, :presence => { message: "Campo obligatorio" }
	validates :nombre , :uniqueness => true
end
