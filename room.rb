class Room

  attr_reader :room_number, :songs, :guests
  def initialize(room_number, songs, guests)
    @room_number = room_number
    @songs = songs
    @guests = []
  end

  def get_song_list
    @songs.map { |song| song.name }
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
end
