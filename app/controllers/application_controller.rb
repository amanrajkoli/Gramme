class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

   protected

   def configure_permitted_parameters
     added_attrs = [:email, :password, :password_confirmation, :remember_me, :username,:avatar, :is_female, :date_of_birth,:about]
     devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
     devise_parameter_sanitizer.permit :account_update, keys: added_attrs
   end
end