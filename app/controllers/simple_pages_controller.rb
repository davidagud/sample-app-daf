class SimplePagesController < ApplicationController

  def index
  end


  def landing_page
    @products = Product.limit(4)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = [:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end

end
