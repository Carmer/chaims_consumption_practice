class Album

  def self.service
    ChaimsService.new
  end

  def self.all
    service.albums.map { |album| build_object(album) }
  end

  def self.find(id)
    album_data = service.album(id)
    build_object(album_data)
  end

  def self.create(params)
    build_object(service.create_album(params))
  end

  def self.update(id, params)
    build_object(service.update_album(id, params))
  end

  def self.destroy(id)
    build_object(service.destroy_album(id))
  end

  private

  def self.build_object(data)
    OpenStruct.new(data)
  end
end
