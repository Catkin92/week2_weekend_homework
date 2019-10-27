class Guest

  attr_reader :name, :wallet, :fav_song

  def initialize(name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
  end

  def pay_entry_fee
    @wallet -= 7.00
  end

  def fav_song_on_playlist(room)
      if room.have_song(room, @fav_song) == @fav_song
        return "OMG! Give me the mic!"
      end
  end

end
