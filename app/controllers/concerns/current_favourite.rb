module CurrentFavourite
  extend ActiveSupport::Concern

  private

  def set_favourite 
    @favourite = Favourite.find(session[:favourite_id])
  rescue ActiveRecord::RecordNotFound
    @favourite = Favourite.create
    session[:favourite_id] = @favourite.id
  end
end
