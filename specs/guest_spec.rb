require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../song.rb')
require_relative('../room.rb')

class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guest.new("John", 25.00, "Love Shack")
    @guest2 = Guest.new("Eugene", 17.00, "Barbie Girl")
    @guest3 = Guest.new("Sandy", 6.00, "Sunshine on Leith")

    @guests = [@guest1, @guest2, @guest3]

    @song1 = Song.new("Barbie Girl", "Pop")
    @song2 = Song.new("Rock Me Amadeus", "Europop")
    @song3 = Song.new("I Will Always Love You", "Ballad")

    @playlist = [@song1, @song2, @song3]

    @room1 = Room.new(1, @playlist, @guests)
  end

  def test_get_name
    assert_equal("John", @guest1.name)
  end

  def test_get_wallet
    assert_equal(17.00, @guest2.wallet)
  end

  def test_get_fav_song
    assert_equal("Sunshine on Leith", @guest3.fav_song)
  end

  def test_pay_entry_fee
    @guest2.pay_entry_fee
    assert_equal(10.00, @guest2.wallet)
  end

  def test_fav_song_on_playlist
  assert_equal("OMG! Give me the mic!",@guest2.fav_song_on_playlist(@room1))
  end
end
