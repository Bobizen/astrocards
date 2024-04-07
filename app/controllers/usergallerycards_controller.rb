class UsergallerycardsController < ApplicationController
  def new
  end

  def create
    @usergallery = Usergallerie.find(params[:usergallery_id])
    @card = Card.find(params[:card_id])
    @gallerycard = Usergallerycard.new(gallerycard_params)
    @gallerycard.usergallerie = @usergallery
    @gallerycard.card = @card

    if @gallerycard.save
      redirect_to usergallery_path(@usergallery.id)
    end
  end

  private
  def gallerycard_params
    params.require(:usergallerycard).permit(:usergallery_id, :card_id)
  end
end
