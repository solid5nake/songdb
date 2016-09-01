class SongsController < ApplicationController
  before_action :set_artist, only: [:index, :create, :destroy, :cleanup]

  def index
  end

  def create
    @artist.songs.create(songs_params)
    render "songs/index"
  end

  def destroy
    @artist.songs.find(params[:id]).destroy
    render "songs/index"
  end

  def cleanup
    @artist.songs.destroy_all
    render "songs/index"
  end

private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def songs_params
    params.require(:song).permit(:title, :artist_id)
  end
end
