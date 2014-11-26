class CombineItemsInFavourite < ActiveRecord::Migration
  def up
	Favourite.all.each do |favourite| 
	# count the number of copies of each product in the cart
	sums = favourite.line_items.group(:brew_id).sum(:quantity)
	sums.each do |brew_id, quantity|
  	if quantity > 1

    	# remove individual items
    	favourite.line_items.where(brew_id: brew_id).delete_all

    	# replace with single item and record quantity
    	item = favourite.line_items.build(brew_id: brew_id)
    	item.quantity = quantity
    	item.save!
  	end
	end 
     end
  end
	def down
	# split items with quantity>1 into multiple items
	LineItem.where("quantity>1").each do |item|
	# add individual items
	item.quantity.times do
	LineItem.create(favourite_id: item.favourite_id,
	brew_id: item.brew_id, quantity: 1)
	end
	# remove original item
	item.destroy
	end
   end
end
