class UserResponseMailer < ApplicationMailer
	
  def user_response(response)
   @name = response[:Name]
   @email = response[:Email]
   @phone = response[:phone]
   @message = response[:Message]  
   mail(to: "atsnikhade@gmail.com", subject: 'Portfolio Visited')
  end	

end	