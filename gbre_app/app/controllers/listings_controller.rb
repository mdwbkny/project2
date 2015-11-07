class ListingsController < ApplicationController
	# before_action :set_listing, only: [:show, :edit, :update, :destroy]

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
		@listings = Listing.new(params[:listings_id])
		if @listings.save
			redirect_to @listings, alert: "Listing created successfully!"
		else
			redirect_to new_listings_path, alert: "Error creating listing!"
		end
	end


	def edit
	end

	def destroy
		@listing.destroy
		redirect_to listings_url
	end

end