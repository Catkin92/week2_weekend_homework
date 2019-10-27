require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < MiniTest::Test

  def setup

    @song1 = Song.new("Barbie Girl", "Pop")
    @song2 = Song.new("Rock Me Amadeus", "Europop")
    @song3 = Song.new("I Will Always Love You", "Ballad")
  end

  def test_get_name
    assert_equal("Rock Me Amadeus", @song2.name)
  end

  def test_get_genre
    assert_equal("Ballad", @song3.genre)
  end
end
