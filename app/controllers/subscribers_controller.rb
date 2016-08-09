class SubscribersController < ApplicationController

	def index
		@subscriber = Subscriber.new
	end

	def create
		@subscriber = Subscriber.new(subscriber_params)
		if @subscriber.save
			FsboMailer.send_signup_email(@user).deliver
			redirect_to subscribers_path
		else
			render 'new'
		end

	end

	def subscriber_params
		params.require(:subscriber).permit(:email)
	

end
