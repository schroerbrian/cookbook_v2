class ForgetPasswordsController < ApplicationController

	
	def new
		
	end

	def send_email
		@user = User.find_by_email(params[:email])
		if @user.email
			UserMailer.forgot_password(@user).deliver
			flash[:success] = "Reset password email sent"
			redirect_to signin_path 
		else 
			flash[:error] = "Email not found!"
			redirect_to signin_path
		end
	end

	  # send_password_reset
	  # self.remember_token
	  # UserMailer.reset_password_email
	  
end
