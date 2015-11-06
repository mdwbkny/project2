class Listing < ActiveRecord::Base
	belongs_to :agents
	belongs_to :users
end
