class KaraokeClub

  attr_reader :name, :number_of_rooms, :money

  def initialize(name, number_of_rooms, money)
    @name = name
    @number_of_rooms = number_of_rooms
    @money = money
  end
end
