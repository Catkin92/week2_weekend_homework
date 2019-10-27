class Room

  attr_reader :room_number, :playlist, :guests
  def initialize(room_number, playlist, guests)
    @room_number = room_number
    @playlist = playlist
    @guests = guests
  end

  def get_song_list
    @playlist.map { |song| song.name }
  end

# how do I do this with .each?
  def have_song(room, song)
      for track in room.get_song_list
        if track == song
          return song
        end
      end
      return "Song not available."
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def remove_all_guests
    @guests.clear
  end

  def add_song(new_song)
    @playlist << new_song
  end

end
