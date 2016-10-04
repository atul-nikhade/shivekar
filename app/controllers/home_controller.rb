class HomeController < ApplicationController
  
  def index
  end

  def contact_us
  end	

  def send_mail
  	UserResponseMailer.user_response(params).deliver
    # flash[:success] = 'Your message sent successfully to Atul. Thanks for your message. Keep in touch'
    redirect_to :back
  end

 private

 protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

end