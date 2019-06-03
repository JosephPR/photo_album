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

    def edit
       @photo = Photo.find(params[:id])
    end

    def update
      @photo = Photo.find(params[:id])

      @photo.update(photo_params)
      redirect_to photos_path
    end


    def destroy
      @photo = Photo.find(params[:id])
      @photo.destroy
      redirect_to albums_path

    end


    private

    def photo_params
      params.require(:photo).permit(:name, :image_url, :album_id)
    end
end
