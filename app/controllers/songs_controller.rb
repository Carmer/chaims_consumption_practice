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
  end

  def update
    Song.update(params[:id], params)

    redirect_to song_path(params[:id])
  end

  def new
  end

  def create
    @song = Song.create(params)

    redirect_to song_path(@song.id)
  end

  def destroy
    Song.destroy(params[:id])
    redirect_to songs_path
  end
end
