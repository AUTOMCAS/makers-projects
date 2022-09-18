require_relative "../lib/challenge.rb"

describe MusicTracker do
  describe 'add_track method' do
    it 'returns ["Happy Birthday"] when given "Happy Birthday"' do
      class_instance = MusicTracker.new
      expect(class_instance.add_track("Happy Birthday")).to eq ["Happy Birthday"]
    end

    it 'returns ["Jingle Bells", "Happy Birthday", "Master of Puppets"] when given "Jingle Bells", then "Happy Birthday" then "Master of Puppets"' do
      class_instance = MusicTracker.new
      class_instance.add_track("Jingle Bells")
      class_instance.add_track("Happy Birthday")
      expect(class_instance.add_track("Master of Puppets")).to eq ["Jingle Bells", "Happy Birthday", "Master of Puppets"]
    end
  end

  describe 'return_track_list method' do
      it 'returns ["Jingle Bells", "Happy Birthday", "Master of Puppets"]' do
        class_instance = MusicTracker.new
        class_instance.add_track("Jingle Bells")
        class_instance.add_track("Happy Birthday")
        class_instance.add_track("Master of Puppets")
        expect(class_instance.return_track_list).to eq ["Jingle Bells", "Happy Birthday", "Master of Puppets"]
    end
  end
end