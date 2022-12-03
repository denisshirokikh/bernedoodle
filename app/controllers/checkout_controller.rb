class CheckoutController < ApplicationController

	def create
	  product = Puppy.find(params[:id])
	  @session = Stripe::Checkout::Session.create({
		  payment_method_types: ['card'],
		  line_items: [{
	      	price_data: {
	      		unit_amount: product.price * 100,
	      		currency: 'usd',
	      		product_data: {
			        name: product,
			        description: product.description,
			    },
	    	},	
	    	quantity: 1,
	      }],
		  mode: 'payment',
		  success_url: root_url,
		  cancel_url: root_url,
	    })
	    respond_to do |format|
  			format.html { redirect_to @session.url, allow_other_host: true }
  			format.json
		end
	end

end
