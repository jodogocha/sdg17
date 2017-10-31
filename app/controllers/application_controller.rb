class ApplicationController < ActionController::Base
  before_filter :authenticate_user!, :except => [:some_action_without_auth]

  layout 'admin_lte_2'

  # protect_from_forgery with: :exception
  
  rescue_from CanCan::AccessDenied do |exception|
  	flash[:alert] = "Acceso denegado. No tienes autorización."
    redirect_to root_path
  end
end
