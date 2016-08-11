class SubscribersController < ApplicationController

	def index
		@subscriber = Subscriber.new
	end

	def create
		@subscriber = Subscriber.new(subscriber_params)
		if @subscriber.save
			flash[:success] = "Thank you for subscribing! Your E-Guide is On It's Way."
			FsboMailer.send_fsbo_report_email(@subscriber).deliver_now
			redirect_to subscribers_path
		else	
			render 'index'
		end

	end

	def subscriber_params
		params.require(:subscriber).permit(:email, :first_name, :last_name)
	end

end
