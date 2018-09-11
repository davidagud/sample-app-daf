class SimplePagesController < ApplicationController
  def index
  end
end

class SimplePagesController < ApplicationController
  def landing_page
    @products = Product.limit(4)
  end
end

class mail < ActionMailer::Base
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(from: @email,
      to: 'davidagud@gmail.com',
      subject: "A new contact form from #{@name}",
      body: @message).deliver_now
  end
