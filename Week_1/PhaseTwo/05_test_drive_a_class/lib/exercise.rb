class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @chunk_called_before = false
    @first_chunk = ""
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm) 
    (count_words.to_f / wpm).ceil
    # returns the time to read the contents 

    # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.

    # reading_time_estimate = reading_time(wpm)
    # wpm: integer (eg 200)
    # reading_time_estimate: integer (eg 2)
    
    # given count_words is 200, reading_time(200) => 1
    # given count_words is 300, reading_time(200) => 2
    # given count_words is 400, reading_time(200) => 2
    # given count_words is 50, reading_time(200) => 1
    # given count_words is 0, reading_time(200) => 0

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
    
                                  # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end