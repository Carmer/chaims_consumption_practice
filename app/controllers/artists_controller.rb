class ArtistsController < ApplicationController

    def show
      @artist = Artist.find(params[:id])
    end

    def index
      @artist = Artist.all
    end

    def edit
    end

    def update
      Artist.update(params[:id], params)

      redirect_to Artist_path(params[:id])
    end

    def new
    end

    def create
      @artist = Artist.create(params)

      redirect_to artist_path(@artist.id)
    end

    def destroy
      Artist.destroy(params[:id])
      redirect_to artists_path
    end
end
