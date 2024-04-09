class UsersupportsController < ApplicationController
  def create
    @gallerycard = Usergallerycard.find(params[:usergallerycard_id])
    @support = Gallerysupport.find(params[:gallerysupport_id])

    @usersupport = Usersupport.new(usergallerycard: @gallerycard, gallerysupport: @support)
    @usersupport.save
  end
end
