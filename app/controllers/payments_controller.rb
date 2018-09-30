class PaymentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    token = params[:stripeToken]
    begin
      charge = Stripe::Charge.create(
        amount: (@product.price*100).to_i, #amount in cents
        currency: "usd",
        source: token,
        receipt_email: @user.email,
        description: params[:stripeEmail]
      )

    if charge.paid
      Order.create(user_id: @user.id, product_id: @product.id, total: @product.price*100)
    end

    rescue Stripe::CardError => e
      #The card has been declined
    end
  end
end
