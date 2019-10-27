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

  def add_guest(room, guest)
    if guest.wallet >= 7.00
      guest.pay_entry_fee
      room.guests << guest
      @money += 7.00
    end
    return "Sorry, you can't afford this room."
  end
end
