# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Listings
    	# t.text :address
    	# t.integer :unit
    	# t.integer :price
    	# t.integer :commission
    	# t.string :access
    	# t.text :description
    	# t.text :img_url
      # t.timestamps null: false

Listing.create({
	address: "17 Monitor Street, Brooklyn, NY 11222",
	unit: 1,
	price: 2500,
	commission: 100,
	access: "FD code #2468",
	description: "This recently converted schoolhouse boasts large windows, city view, and tons of amenities!",
	img_url: "17monitor.jpg"
	})

Listing.create({
	address: "21 Monitor Street, Brooklyn, NY 11222",
	unit: 2,
	price: 3500,
	commission: 100,
	access: "FD code #2468",
	description: "This recently converted schoolhouse boasts large windows, city view, and tons of amenities!",
	img_url: "21monitor.jpg"
	})

Listing.create({
	address: "195 Leonard Street, Brooklyn, NY 11206",
	unit: 3,
	price: 4500,
	commission: 100,
	access: "FD code #2468",
	description: "This recently converted schoolhouse boasts large windows, city view, and tons of amenities!",
	img_url: "195Leonard.jpg"
	})

# Agents
		# t.string   "first_name"
  	# t.string   "last_name"
  	# t.string   "email"
  	# t.string   "phone"
  	# t.datetime "created_at", null: false
  	# t.datetime "updated_at", null: false

Agent.create({
	first_name: "Mike",
	last_name: "Wiesenhart",
	email: "mike@nooklyn.com",
	phone: "917-474-4022"
	})

Agent.create({
	first_name: "Tara",
	last_name: "Schwartz",
	email: "tara@nooklyn.com",
	phone: "917-473-4011"
	})

Agent.create({
	first_name: "Connor",
	last_name: "McDavid",
	email: "connor@nooklyn.com",
	phone: "917-464-4012"
	})