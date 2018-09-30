if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_l69wyVLwxe1yEoM5FnEU4hHF',
    secret_key: 'sk_test_6AzNcrDnd2HCVv2Vi61g21iq'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
