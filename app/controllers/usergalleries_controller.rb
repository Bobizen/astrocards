class UsergalleriesController < ApplicationController
  def index
    # if no user gallery => create one and redirect to the show page
    if Usergallerie.where(user: current_user).count == 0
      gallery = Usergallerie.new
      gallery.user = current_user
      gallery.save
      redirect_to usergallery_path(gallery.id)
    end
  end

  def show
    @gallery = Usergallerie.find(params[:id])
    @cards_in_gallery = Usergallerycard.where(usergallerie: @gallery)
  end
end
