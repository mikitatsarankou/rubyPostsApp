class RegistrationsController < Devise::RegistrationsController

	private

	def sigh_up_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end

	def acc_update_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
	end
end