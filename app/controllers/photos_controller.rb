class PhotosController < ApplicationController

    def index
      @photos = Photo.all
    end

    def new
      @photo = Photo.new
      @album = Album.find{@photo.album_id}
      @albums = Album.all
    end

    def create
      @photo = Photo.create(photo_params)
      redirect_to photos_path
    end


    private

    def photo_params
      params.require(:photo).permit(:name, :image_url, :album_id)
    end
end
