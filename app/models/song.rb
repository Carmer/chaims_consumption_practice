class Song

  def self.service
    ChaimsService.new
  end

  def self.complete_info(id)
    build_object(service.complete_info(id))
  end

  def self.all
    service.songs.map { |song| build_object(song) }
  end

  def self.find(id)
    song_data = service.song(id)
    build_object(song_data)
  end

  def self.create(params)
    build_object(service.create_song(params))
  end

  def self.update(id, params)
    build_object(service.update_song(id, params))
  end

  def self.destroy(id)
    build_object(service.destroy_song(id))
  end

  private

  def self.build_object(data)
    OpenStruct.new(data)
  end
end
