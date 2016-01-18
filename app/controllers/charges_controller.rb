class ChargesController < ApplicationController
	def new
	end

	def create
		@amount = 3300

		customer = Stripe::Customer.create(
			:email => params[:stripeEmail], 
			:source => params[:stripeToken]
		)

		charge = Stripe::Charge.create(
			:customer 		=> customer.id, 
			:amount 		=> @amount, 
			:description	=> 'Rails Stripe customer', 
			:currency		=> 'gbp'	
		)

	rescue Stripe::CardError => e
		flash[:error] = e.messsage
		redirect_to_new_charge_path
	end
end
