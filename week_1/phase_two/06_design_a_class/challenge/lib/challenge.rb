class MusicTracker
  def initialize
    @track_list = []
  end

  def add_track(track)
    @track_list << track
  end

  def return_track_list
    @track_list
  end
end