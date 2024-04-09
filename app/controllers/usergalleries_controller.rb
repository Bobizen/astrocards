class UsergalleriesController < ApplicationController
  def index
    # if no user gallery => create one and redirect to the show page
    if Usergallerie.where(user: current_user).count == 0
      gallery = Usergallerie.new
      gallery.user = current_user
      gallery.save
      redirect_to usergallery_path(gallery.id)
    else
      redirect_to usergallery_path(Usergallerie.where(user: current_user).first.id)
    end
  end

  def show
    @gallery = Usergallerie.find(params[:id])
    @cards_in_gallery = Usergallerycard.where(usergallerie: @gallery)
    @supports = Gallerysupport.all
  end

  def ranking
    @bestrank = 1
    @ranking = 2
  end
end
