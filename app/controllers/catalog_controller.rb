class CatalogController < ApplicationController
skip_before_action :authorize  
def index
  @brews = Brew.order(:brewtype)
  @brew = @brews.first
  end

  def home
  @brews = Brew.all
  end
end
