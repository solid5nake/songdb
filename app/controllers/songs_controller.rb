class SongsController < ApplicationController
  before_action :set_artist, only: [:create, :new, :update, :destroy]


  def index
    @songs = Song.all
  end

  def new
  end

  def create
    @song = Song.new(songs_params)
  end

  def destroy
  end

private
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def songs_params
    params.require(:song).permit(:title, :artist_id)
  end
end
