require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guest.new("John", 25.00, "Love Shack")
    @guest2 = Guest.new("Eugene", 17.00, "Barbie Girl")
    @guest3 = Guest.new("Sandy", 6.00, "Sunshine on Leith")

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
end
