class ListingsController < ApplicationController
	before_action :set_listing, only: [:show, :edit, :update, :destroy]

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

	def edit
		@listings = Listing.find(params[:id])
	end

	def update
		if @listings.update(listing_params)
			redirect_to listings_path
		else
			render :edit
		end
	end

	def destroy
		@listings.destroy
		redirect_to listings_url
	end

	def set_listing
		@listings = Listing.find(params[:id])
	end

	def listing_params
		params.require(:listing).permit(:address, :unit, :price, :description, :image)
	end

end