class EventsController < ApplicationController
	def index
	end

	def new
		@event = Event.new
	end

	def create 
		@event = Event.new(start_date: params[:start_date], duration: params[:duration],title: params[:title], description: params[:description], price: params[:price], location: params[:location], user: current_user)
		if @event.errors.any?
			render :new
		end
		if @event.save
			redirect_to root_path
		else 
			render :new
		end
	end

	def show 
		@event = Event.find(params[:id])
	end
end







