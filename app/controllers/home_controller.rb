class HomeController < ApplicationController
  
  def index
  end

  def send_mail
  	p "*****222****#{params.inspect}********222*********"
  	UserResponseMailer.user_response(params).deliver
    p "*****333****#{params.inspect}********333*********"
    flash[:success] = 'Your message sent successfully to Atul. Thanks for your message. Keep in touch'
    redirect_to :back
  end	

 private

 protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

end
