class ChaimsService
  attr_reader :connection

  def initialize
    @connection = Hurley::Client.new("http://my-chaims.herokuapp.com/api/v1/")
  end

  def complete_info(song_id)
    parse(connection.get("complete_info/#{song_id}"))
  end

  def songs
    parse(connection.get("songs"))
  end

  def song(id)
    parse(connection.get("songs/#{id}"))
  end

  def create_song(data)
    parse(connection.post("songs",data))
  end

  def update_song(id, data)
    parse(connection.patch("songs/#{id}", data))
  end

  def destroy_song(id)
    parse(connection.delete("songs/#{id}"))
  end

  def artists
    parse(connection.get("artists"))
  end

  def artist(id)
    parse(connection.get("artists/#{id}"))
  end

  def create_artist(data)
    parse(connection.post("artists", data))
  end

  def update_artist(id, data)
    parse(connection.patch("artists/#{id}", data))
  end

  def destroy_artist(id)
    parse(connection.delete("artist/#{id}"))
  end

  def albums
    parse(connection.get("albums"))
  end

  def album(id)
    parse(connection.get("albums/#{id}"))
  end

  def create_album(data)
    parse(connection.post("albums", data))
  end

  def update_album(id, data)
    parse(connection.patch("albums/#{id}", data))
  end

  def destroy_album(id)
    parse(connection.delete("album/#{id}"))
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end
