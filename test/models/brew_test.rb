require 'test_helper'

class BrewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
test "brew attributes must not be empty" do
  brew = Brew.new
  assert brew.invalid?
  assert brew.errors[:title].any?
  assert brew.errors[:description].any?
  assert brew.errors[:price].any?
  assert brew.errors[:image_url].any?
  assert brew.errors[:website].any?
  assert brew.errors[:origin].any?
  assert brew.errors[:brewtype].any?
end
test "brew price must be positive" do
  brew = brews(:one)

  brew.price = -1
  assert brew.invalid?
  assert brew.errors[:price].any?

  brew.price = 0
  assert brew.invalid?
  assert brew.errors[:price].any?

  brew.price = 1
  assert brew.valid?
  assert brew.errors[:price].none?
end
test "brew is not valid without a unique title" do
      brew = Brew.new(:title       => brews(:ruby).title,
                            :description => "xxx", 
                            :price       => 1, 
                            :image_url   => "barney.gif")

      assert brew.invalid?
      assert_equal ["has already been taken"], brew.errors[:title]
    end
end
