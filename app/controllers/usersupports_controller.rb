class UsersupportsController < ApplicationController
  def create
    @gallerycard = Usergallerycard.find(params[:usergallerycard_id])
    @support = Gallerysupport.find(params[:gallerysupport_id])

    @existingsupport = Usersupport.find_by(usergallerycard_id: @gallerycard.id)
    puts "existing usersupport: #{@existingsupport&.id}"
    puts "new gallerysupport : #{@support.id}"
    puts "usergallery card id: #{@gallerycard.id}"

    if @existingsupport.nil?
      puts "new support to be created"
      @usersupport = Usersupport.new(usergallerycard: @gallerycard, gallerysupport: @support)
      @usersupport.save
    else
      puts "support to be updated"
      @existingsupport.gallerysupport_id = @support.id
      @existingsupport.save
    end
  end
end
