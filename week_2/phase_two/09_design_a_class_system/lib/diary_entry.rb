class DiaryEntry
  def initialize(title, content)
    @title = title
    @content = content
    @contacts = []
  end

  def title
    return @title
  end

  def content
    return @content
  end

  def count_words
    return content.split(" ").length
  end

  def reading_time(wpm)
    return (count_words / wpm.to_f).ceil
  end

  def return_contacts
    @content.split(" ").each do |word|
      @contacts << word if word.match /^\d{1,11}$/
    end
    return @contacts
  end
end