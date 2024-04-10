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

    if current_user.id == @gallery.user_id
      @userstatus = true
    end
  end

  def ranking
    @bestrank = 1
    @ranking = 2

    @galleries = Usergallerie.where(shared: true).sort_by { |gallery| -gallery.usergallerycards.count }
  end

  def share
    @usergallery = Usergallerie.find(params[:id])
    @usergallery.shared = (params[:status] == true)
    @usergallery.save
  end
end
