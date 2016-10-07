class UserResponseMailer < ApplicationMailer
	
  def user_response(response)
   @name = response[:name]
   @email = response[:email]
   @subject = response[:subject]
   @message = response[:message]
   mail(to: "spanengineering25@gmail.com", subject: 'Website Visited')
  end	

end