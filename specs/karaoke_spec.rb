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

    @guests1 = [@guest1, @guest2, @guest3]
    @guests2 = [@guest4]

    @song1 = Song.new("Barbie Girl", "Pop")
    @song2 = Song.new("Rock Me Amadeus", "Europop")
    @song3 = Song.new("I Will Always Love You", "Ballad")

    @songs = [@song1, @song2, @song3]

    @room1 = Room.new(1, @songs, @guests1)
    @room2 = Room.new(2, @songs, @guests2)

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
end
