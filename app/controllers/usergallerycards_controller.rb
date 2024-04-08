class UsergallerycardsController < ApplicationController
  def new
  end

  def create
    @usergallery = Usergallerie.find(params[:usergallery_id])
    @card = Usercard.find(params[:usercard][:id])
    @gallerycard = Usergallerycard.new
    @gallerycard.usergallerie = @usergallery
    @gallerycard.usercard = @card

    if @gallerycard.save
      redirect_to usergallery_path(@usergallery.id), notice: 'Card added in the gallery'
    end
  end

  private
  def gallerycard_params
    params.require(:usergallerycard).permit(:usergallery_id, :id)
  end
end
