class ListingsController < ApplicationController

	def index
		@listings = Listing.all
	end

	def show
	end

	def new
		@listings = Listing.new
	end

	def edit
	end

	def destroy
		@listing.destroy
		redirect_to listings_url
	end

end
