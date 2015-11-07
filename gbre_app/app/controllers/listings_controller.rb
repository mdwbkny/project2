class ListingsController < ApplicationController
	before_action :set_listing, only: [:edit, :update, :destroy]

	def index
		@listings = Listing.all
	end

	def show
		@listings = Listing.find(params[:id])
	end

	def new
		@listings = Listing.new
	end

	def create
		@listings = Listing.new(listing_params)
			@listings.save
			redirect_to listings_path
		end
	end

	def edit
		@listings = Listing.find(listing_params)
		redirect_to listings_path
	end

	def destroy
		@listings = Listing.destroy
		redirect_to listings_path
	end

def listing_params
	params.require(:listing).permit(:address, :unit, :price, :description, :img_url)
end