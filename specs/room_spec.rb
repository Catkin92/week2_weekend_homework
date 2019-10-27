require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')
require('pry-byebug')

class TestRoom < MiniTest::Test

  def setup

    @guest1 = Guest.new("John", 25.00, "Love Shack")
    @guest2 = Guest.new("Eugene", 17.00, "Barbie Girl")
    @guest3 = Guest.new("Sandy", 6.00, "Sunshine on Leith")

    @song1 = Song.new("Barbie Girl", "Pop")
    @song2 = Song.new("Rock Me Amadeus", "Europop")
    @song3 = Song.new("I Will Always Love You", "Ballad")

    @playlist = [@song1, @song2, @song3]

    @new_song = Song.new("Jailhouse Rock", "Rock and Roll")

    @guests = []

    @room1 = Room.new(1, @playlist, @guests)

  end

  def test_get_room_number
    assert_equal(1, @room1.room_number)
  end

  def test_get_guests
    assert_equal([], @room1.guests)
  end

  def test_get_song_list
    assert_equal(["Barbie Girl", "Rock Me Amadeus", "I Will Always Love You"], @room1.get_song_list)
  end

  def test_have_song__true
    assert_equal("Rock Me Amadeus", @room1.have_song(@room1, "Rock Me Amadeus"))
  end

  def test_have_song__false
    assert_equal("Song not available.", @room1.have_song(@room1, "Fly Me To The Moon"))
  end

  def test_remove_guest_from_room
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    @room1.remove_guest(@guest1)
    assert_equal([@guest2, @guest3], @room1.guests)
  end

  def test_remove_all_guests
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    @room1.remove_all_guests
    assert_equal([], @room1.guests)
  end

  def test_add_song
    @room1.add_song(@new_song)
    assert_equal("Jailhouse Rock", @room1.have_song(@room1, "Jailhouse Rock"))
  end
end
