class SongsController < ApplicationController

  def complete_info
    @info = Song.complete_info(params[:id])
  end

  def show
    @song = Song.find(params[:id])
  end

  def index
    @song = Song.all
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    Song.update(params[:id], params[:song])

    redirect_to song_path(params[:id])
  end

  def new
  end

  def create
    @song = Song.create(params[:song])

    redirect_to song_path(@song.id)
  end

  def destroy
    Song.destroy(params[:id])
    redirect_to songs_path
  end
end
