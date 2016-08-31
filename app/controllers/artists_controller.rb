class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to @artist, notice: 'Artist is successfully updated.'}
        format.json { render :show, status: :ok, location: @artist }
      else
        format.html { render :edit}
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

private
  def artist_params
    params.require(:artist).permit(:name, :image, :created_at)
  end
end
