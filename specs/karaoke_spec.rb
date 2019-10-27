require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke.rb')

class TestKaraokeClub < MiniTest::Test

  def setup

    @karaoke_club = KaraokeClub.new("Karaoke Box",
                    3, 100.00)

  end

  def test_get_name
    assert_equal("Karaoke Box", @karaoke_club.name)
  end

  def test_get_number_of_rooms
    assert_equal(3, @karaoke_club.number_of_rooms)
  end

  def test_get_money
    assert_equal(100.00, @karaoke_club.money)
  end
end
