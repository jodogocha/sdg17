class ResolutionsType < ApplicationRecord
	resourcify
	audited
	has_one :resolution
end
