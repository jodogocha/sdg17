class Tpersona < ApplicationRecord
  audited
  resourcify
  has_many :people
  validates :tipo, :presence => { message: "Campo obligatorio" }
  validates :tipo , :uniqueness => true
end
