class DiaryEntry
  def initialize(title, content) # title and content are both strings
    @title = title
    @content = content
  end

  def title
    return @title
  end

  def content
    return @content
  end

  def count_words # returns integer
    return content.split(" ").length
  end

  def reading_time(wpm) #wpm is integer
    # time to read the contents in mins
    # number of words / wpm
    return count_words / wpm
  end
end