Rails.configuration.stripe = {
  :publishable_key => 'pk_test_DdqMhMAi357xLxM6BsKfOTpv'
  :secret_key      => 'sk_test_t2EXHTR4RcPhCqVq6alT2MJN'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
