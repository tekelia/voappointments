class CallsController < ApplicationController
		
	def index
		@calls = Call.all.order('created_at DESC')
	end

	def show
		@call = Call.find(params[:id])
	end

	def new
		@call = Call.new
	end

	def create
		@call = Call.new(call_params)
		
		if @call.save 
			redirect_to @call
		else
			render 'new'
		end
	end	

	private

		def call_params
			params.require(:call).permit(:name, :phone, :email, :address, :city, :zip,:appt_date,:appt_time)
		end
end

