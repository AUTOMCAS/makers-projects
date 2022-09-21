require_relative "../lib/track"

describe "Track" do
  it "matches a given keyword in the title" do
    track = Track.new("Happy Birthday", "Unknown")
    expect(track.matches?("Happy")).to eq true
  end

  it "matches a given keyword in the artist" do
    track = Track.new("Happy Birthday", "Unknown")
    expect(track.matches?("Unknown")).to eq true
  end

  it "does not match a given keyword" do
    track = Track.new("Happy Birthday", "Unknown")
    expect(track.matches?("test")).to eq false
  end
end
