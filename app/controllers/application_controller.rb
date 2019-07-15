class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!
	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up,keys: [:name])
	end
	Refile.secret_key = 'b82dcd799ba930532c79b8504b861835b7fec9b4884f6c763cb67b48d66e080710e902ff50a583d5df85e580962bfb229128804aae55bc27d9181b7d65aafd2d'
end
