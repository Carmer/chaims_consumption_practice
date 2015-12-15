class AlbumsController < ApplicationController

    def show
      @album = Album.find(params[:id])
    end

    def index
      @albums = Album.all
    end

    def edit
      @album = Album.find(params[:id])
    end

    def update
      Album.update(params[:id], params[:album])

      redirect_to album_path(params[:id])
    end

    def new
    end

    def create
      @album = Album.create(params[:album])

      redirect_to album_path(@album.id)
    end

    def destroy
      Album.destroy(params[:id])
      redirect_to Albums_path
    end
end
