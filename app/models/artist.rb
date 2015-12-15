class Artist

  def self.service
    ChaimsService.new
  end

  def self.all
    service.artists.map { |artist| build_object(artist) }
  end

  def self.find(id)
    artist_data = service.artist(id)
    build_object(artist_data)
  end

  def self.create(params)
    build_object(service.create_artist(params))
  end

  def self.update(id, params)
    build_object(service.update_artist(id, params))
  end

  def self.destroy(id)
    build_object(service.destroy_artist(id))
  end

  private

  def self.build_object(data)
    OpenStruct.new(data)
  end
end
