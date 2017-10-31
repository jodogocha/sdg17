class Esummary < ApplicationRecord
	resourcify
  audited
  belongs_to :record
end
