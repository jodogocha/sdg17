class Record < ApplicationRecord
	resourcify
    audited
	belongs_to :origen , :class_name => "Dependency"
	belongs_to :destino, :class_name => "Dependency"
	belongs_to :clasification
	accepts_nested_attributes_for :clasification

	has_one :state
	belongs_to :person
	accepts_nested_attributes_for :person
	has_one :history
	has_many :esummaries
	validates :num_expediente, :descripcion, :clasification_id, :person_id, :origen_id , :destino_id , :presence => { message: "Campo obligatorio" }
	validates :num_expediente , :uniqueness => true
end

