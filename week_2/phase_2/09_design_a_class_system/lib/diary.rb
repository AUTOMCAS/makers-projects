class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries << entry
  end

  def all_entries
    return @entries
  end

  def count_words
    # needed for below calculation
    # Returns number of words in all diary entries
    return @entries.sum(&:count_words)
  end

  def readable_entries_in_time(wpm, time) # both integers, time in minutes, wpm - words per minute
    # Returns diary entry with read time closest to time given
    # Need to have: 
      # Reading time of each entry
        # Which needs WPM and word count
      # Sort to remove those over the time
      # Sort by time to read
      # return entry with highest time to read (integer)
  end

  def todolist
    # Return TodoList
  end

  def return_contacts 
    # Returns mobile phone numbers filtered from all entries
  end 
end