class History < ApplicationRecord
	audited
	resourcify
	belongs_to :record
end
