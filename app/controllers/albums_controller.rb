class AlbumsController < ApplicationController


  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
    @photos = Photo.select{|photo| photo.album_id == @album.id}
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create(allowed_params)
    if @album.errors.any?
      @albums = Album.all
      render :new
    else
    redirect_to albums_path
    end
  end


  private

  def allowed_params
    params.require(:album).permit(:name, :description)
  end

end
