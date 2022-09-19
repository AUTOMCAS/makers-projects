class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @chunk_called_before = false
    @first_chunk = ""
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm)
    fail "ERROR" unless wpm.positive?
    return (count_words.to_f / wpm).ceil
  end

  def reading_chunk(wpm, minutes) 
    words_per_chunk = wpm * minutes
    if @chunk_called_before == false
      @first_chunk = words_per_chunk
      @chunk_called_before = true
      (@contents.split.slice(0, (words_per_chunk))).join(" ")
    else
      (@contents.split.slice(@first_chunk, (words_per_chunk))).join(" ")
    end
  end
end