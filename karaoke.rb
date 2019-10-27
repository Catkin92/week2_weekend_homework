class KaraokeClub

  attr_reader :name, :rooms, :money

  def initialize(name, rooms, money)
    @name = name
    @rooms = rooms
    @money = money
  end

  def fire_alarm
      for room in @rooms
        room.remove_all_guests
      end
      return "Wooo-eee-ooo-eee"
  end
end
