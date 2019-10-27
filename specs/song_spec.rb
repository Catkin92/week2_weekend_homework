require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')
require_relative('../room.rb')

class TestSong < MiniTest::Test

  def setup

    @song1 = Song.new("Barbie Girl", "Pop")
    @song2 = Song.new("Rock Me Amadeus", "Europop")
    @song3 = Song.new("I Will Always Love You", "Ballad")
    @song4 = Song.new("Poker Face", "Pop")

    @playlist = [@song1, @song2, @song3, @song4]

    @guests = []

    @room1 = Room.new(1, @playlist, @guests)
  end

  def test_get_name
    assert_equal("Rock Me Amadeus", @song2.name)
  end

  def test_get_genre
    assert_equal("Ballad", @song3.genre)
  end

end
