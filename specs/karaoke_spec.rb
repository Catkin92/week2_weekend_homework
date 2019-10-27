require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke.rb')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestKaraokeClub < MiniTest::Test

  def setup

    @guest1 = Guest.new("John", 25.00, "Love Shack")
    @guest2 = Guest.new("Eugene", 17.00, "Barbie Girl")
    @guest3 = Guest.new("Sandy", 6.00, "Sunshine on Leith")
    @guest4 = Guest.new("Juan", 13.00, "Heartbreak Hotel")
    @guest5 = Guest.new("Kat", 8.00, "Country Roads")
    @guest6 = Guest.new("Morag", 5.00, "Havana")

    @guests1 = [@guest1, @guest2, @guest3]
    @guests2 = [@guest4]

    @song1 = Song.new("Barbie Girl", "Pop")
    @song2 = Song.new("Rock Me Amadeus", "Europop")
    @song3 = Song.new("I Will Always Love You", "Ballad")

    @playlist = [@song1, @song2, @song3]

    @room1 = Room.new(1, @playlist, @guests1)
    @room2 = Room.new(2, @playlist, @guests2)

    @rooms = [@room1, @room2]

    @karaoke_club = KaraokeClub.new("Karaoke Box",
                    @rooms, 100.00)

  end

  def test_get_name
    assert_equal("Karaoke Box", @karaoke_club.name)
  end

  def test_get_rooms
    assert_equal([@room1, @room2], @karaoke_club.rooms)
  end

  def test_get_money
    assert_equal(100.00, @karaoke_club.money)
  end

  def test_guests_in_rooms
    assert_equal([@guest1, @guest2, @guest3], @room1.guests)
  end

  def test_fire_alarm
    @karaoke_club.fire_alarm
    assert_equal("Wooo-eee-ooo-eee", @karaoke_club.fire_alarm)
    assert_equal([], @room1.guests)
    assert_equal([], @room2.guests)
  end

  def test_add_guest_to_room
    @karaoke_club.add_guest(@room2, @guest5)
    assert_equal([@guest4, @guest5], @room2.guests)
    assert_equal(107.00, @karaoke_club.money)
    assert_equal(1.00, @guest5.wallet)
  end

  def test_add_guest_to_room__too_poor
    @karaoke_club.add_guest(@room2, @guest6)
    assert_equal("Sorry, you can't afford this room.", @karaoke_club.add_guest(@room2, @guest6))
  end
end
