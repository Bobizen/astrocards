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

  def destroy
    # parameters extraction
    # if type='object' or 'support'
    @usergallerycard = Usergallerycard.find(params[:usergallerycard_id])
    puts "usergallerycard id: "
    puts @usergallerycard.id

    if (params[:option_obj] == 'support')
      @usersupport = Usersupport.find_by(usergallerycard_id: @usergallerycard.id)
      @usersupport.destroy
    else
      @usergallerycard.destroy
    end
    # redirect_to usergallery_path(params[:usergallerie_id])
  end

  private
  def gallerycard_params
    params.require(:usergallerycard).permit(:usergallery_id, :id)
  end
end
