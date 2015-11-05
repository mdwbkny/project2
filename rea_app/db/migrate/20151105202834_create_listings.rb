class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
    	t.text :address
    	t.integer :unit
    	t.integer :price
    	t.integer :commission
    	t.string :access
    	t.text :description
    	t.text :img_url
      t.timestamps null: false
    end
  end
end
