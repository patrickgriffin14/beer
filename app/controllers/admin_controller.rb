class AdminController < ApplicationController
 
  def index
  @total_brews = Brew.count
  end
end
