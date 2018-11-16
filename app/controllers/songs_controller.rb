class SongsController < ApplicationController
  before_action :set_billboard 

  def index
    @songs = @billboard.songs
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
  end

  def artist_songs 
  end

  private
  def song_params
  end

  def set_billboard
    @billboard = Billboard.find(params[:billboard_id])
  end

  def set_songs
  end
end
