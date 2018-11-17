class SongsController < ApplicationController
  before_action :song_called

  def index
    @songs = @song_called.songs.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
    @song = @billboard.songs.new
  end

  def create
    @song = @billboard.songs.new(song_params)
    if @song.save
      redirect_to billboard_songs_path(@billboard)
    else
      render :new
    end
  end

  def destroy
    @Song.destroy
    redirect_to billboards_path
  end

  protected
  def song_called
    @song_called ||=
    if params[:billboard_id]
      Billboard.find(paramd[:billboard_id])
    else params[:artist_id]
      Artist.find(params[:artist_id])
    end
  end

  private
  def song_params
    params.require(:song).permit(:title, :album)
  end

  def set_billboard
    @billboard = Billboard.find(params[:billboard_id])
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_songs
    @song = Song.find(params[:id])
  end
end
