class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    #code
  end

  def create
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def update
  end

  def edit
  end

  def destroy
  end

private
  def artist_params
    params.require(:artist).permit(:name, :image, :created_at)
  end
end
