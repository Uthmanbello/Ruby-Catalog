require_relative './item'

class MusicAlbum < Item
  attr_accessor :name, :on_spotify

  def initialize(name, on_spotify, publish_date)
    @name = name
    @on_spotify = on_spotify
    super(publish_date)
  end

  def can_be_archived?
    super && on_spotify
  end

  def to_hash
    {
      name: @name,
      on_spotify: @on_spotify,
      publish_date: @publish_date,
      genre: {name: genre.name}
    }
  end
end
