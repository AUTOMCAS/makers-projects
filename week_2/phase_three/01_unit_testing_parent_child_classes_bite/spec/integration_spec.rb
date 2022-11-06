require_relative "../lib/music_library"
require_relative "../lib/track"

describe "integration" do
  it "adds and lists tracks" do
    library = MusicLibrary.new
    track_1 = Track.new("Artist 1", "Track 1")
    track_2 = Track.new("Artist 2", "Track 2")
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
  end

  it "searches tracks that match" do
    library = MusicLibrary.new
    track_1 = Track.new("Artist 1", "Track 1")
    track_2 = Track.new("Artist 2", "Happy Bday")
    library.add(track_1)
    library.add(track_2)
    expect(library.search("Happy")).to eq [track_2]
  end
end