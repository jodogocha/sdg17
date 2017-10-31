class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  
  #rescue_from CanCan::AccessDenied do |exception|
  #	flash[:error] = "Acceso denegado."
  #	redirect_to root_url
  #end
end
