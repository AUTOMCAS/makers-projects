class Diary
  def initialize
    @diary_entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @diary_entries << entry
  end

  def all
    return @diary_entries
  end

  def count_words
    return @diary_entries.sum(&:count_words)
  end

  def reading_time(wpm)
    fail "ERROR" unless wpm.positive?
    return (count_words.to_f / wpm).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries = @diary_entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end

    readable_entries.max_by do |entry|
      entry.count_words
    end
  end
end