class UserMailer < ActionMailer::Base
  default from: "ian@ianyang.co"

	 def welcome_email(user)
	    @user = user
	    @url  = 'http://localhost:3000/signin'
	    mail(to: @user.email, subject: "Thanks for signing up!")
	end

	def forgot_password(user)
		@user = user
		@url = 'http://localhost:3000/users'
		mail(to: @user.email, subject: "Password Reset")
	end

end


