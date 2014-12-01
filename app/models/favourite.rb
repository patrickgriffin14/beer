class Favourite < ActiveRecord::Base

has_many :line_items, dependent: :destroy

def total_price
  line_items.to_a.sum { |item| item.total_price }
end
def add_brew(brew_id)
  current_item = line_items.find_by(brew_id: brew_id)
  if current_item
    current_item.quantity += 1
  else
    current_item = line_items.build(brew_id: brew_id)
  end
  current_item
end
end
