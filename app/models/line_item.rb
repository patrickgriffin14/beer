class LineItem < ActiveRecord::Base
  
belongs_to :brew
  belongs_to :favourite

def total_price
brew.price*quantity
end
end
