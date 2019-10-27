class KaraokeClub

  attr_reader :name, :rooms, :money

  def initialize(name, rooms, money)
    @name = name
    @rooms = rooms
    @money = money
  end
end
