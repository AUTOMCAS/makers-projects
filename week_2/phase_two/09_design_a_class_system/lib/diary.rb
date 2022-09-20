class Diary
  def initialize
    @entries = []
    @todolist = []
    @contacts = []
  end

  def add(entry)
    @entries << entry
  end

  def all_entries
    return @entries
  end

  def count_words
    return @entries.sum(&:count_words)
  end

  def readable_entries_in_time(wpm, time) 
    fail "WPM must be above 0" if wpm <= 0

    filtered = @entries.filter do |entry|
      entry.reading_time(wpm) <= time    
    end

    return filtered.max_by { |entry| entry.count_words } 
  end

  def todolist_add(task)
    @todolist << task
  end

  def todolist_incomplete
    return @todolist
  end

  def todolist_complete
    @todolist.filter do |todo|
      todo.check_done
    end
  end

  def return_contacts 
    @entries.each do |entry|
      contact = entry.return_contacts
      @contacts << contact unless contact == []
    end
    return @contacts
  end 
end
