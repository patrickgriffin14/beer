class Brew < ActiveRecord::Base
validates :title, :description, :image_url, :website, :origin, presence: true
validates :title, :website, uniqueness: true
validates :price, numericality: { greater_than_or_equal_to: 0.01 }
validates :image_url, allow_blank: true, format: {
  with: %r{\.(gif|jpg|png|jpeg)\Z}i,
  message: 'must be a URL for GIF, JPG or PNG image.'
}
end
