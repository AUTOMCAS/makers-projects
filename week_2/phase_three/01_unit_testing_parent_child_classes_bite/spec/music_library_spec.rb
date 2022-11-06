require_relative "../lib/music_library"

describe "MusicLibrary" do
  describe "initially" do
    it "contains no tracks" do
      library = MusicLibrary.new
      expect(library.all).to eq []
    end
  end

  it "adds and lists tracks" do
    library = MusicLibrary.new
    track_1 = double :track
    track_2 = double :track
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
  end
  
  # it "searches tracks by contents" do
  #   library = MusicLibrary.new
  #   track_1 = double :track, matches?: false
  #   track_2 = double :track, matches?: true
  #   library.add(track_1)
  #   library.add(track_2)
  #   expect(library.search("Happy")).to eq [track_2]
  # end
end