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
    @album = Album.create(album_params)
    if @album.errors.any?
      @albums = Album.all
      render :new
    else
    redirect_to albums_path
    end
  end

  def edit
    @album = Album.find(params[:id])
    # @albums = Album.all
  end

  def update
    @album = Album.find(params[:id])

    @album.update(album_params)
    redirect_to albums_path
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end



  private

  def album_params
    params.require(:album).permit(:name, :album_url, :description)
  end

end
