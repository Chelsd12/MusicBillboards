class SongsController < ApplicationController
  before_action :set_artist

  def edit
  end

  def update
  end

  def new
    @song = @artist.songs.new
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
    redirect_to artist_song_path
  end

  def destroy
    @song.destroy
    redirect_to artists_path
  end

  private
  def song_params
    params.require(:song).permit(:title, :album)
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def
  end

end
