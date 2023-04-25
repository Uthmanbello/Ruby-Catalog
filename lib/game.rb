require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, archived, publish_date)
    super(archived, publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    Date.today.year - Date.parse(@publish_date).year > 10 && Date.today.year - Date.parse(@last_played_at).year > 2
  end
end
