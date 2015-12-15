class AlbumsController < ApplicationController

    def show
      @album = Album.find(params[:id])
    end

    def index
      @album = Album.all
    end

    def edit
    end

    def update
      Album.update(params[:id], params)

      redirect_to album_path(params[:id])
    end

    def new
    end

    def create
      @album = Album.create(params)

      redirect_to album_path(@album.id)
    end

    def destroy
      Album.destroy(params[:id])
      redirect_to Albums_path
    end
end
