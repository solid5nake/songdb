class SongsController < ApplicationController
  before_action :set_artist, only: [:index, :create, :new, :update, :destroy]

  def index
  end

  def new
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(songs_params)
  end

  def destroy
    @artist.songs.find(params[:id]).destroy
  end

private
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def songs_params
    params.require(:song).permit(:title, :artist_id)
  end
end
