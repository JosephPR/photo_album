class AlbumsController < ApplicationController


  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
    @photos = Photo.select{|photo| photo.album_id == @album.id}
  end
end
