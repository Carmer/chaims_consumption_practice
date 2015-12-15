class ArtistsController < ApplicationController

    def show
      @artist = Artist.find(params[:id])
    end

    def index
      @artist = Artist.all
    end

    def edit
      @artist = Artist.find(params[:id])
    end

    def update
      Artist.update(params[:id], params[:artist])

      redirect_to Artist_path(params[:id])
    end

    def new
    end

    def create
      @artist = Artist.create(params[:artist])

      redirect_to artist_path(@artist.id)
    end

    def destroy
      Artist.destroy(params[:id])
      redirect_to artists_path
    end
end
