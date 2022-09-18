class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(0)
    most_common = nil
    most_common_count = 1
    @text.chars.each do |char|
      #figure out what char is.
      next unless is_letter?(char) # skip character unless it is a letter
      counter[char] = (counter[char] || 1) + 1 # adding one to counter of character
      if counter[char] > most_common_count
        most_common = char
        most_common_count = counter[char]
      end
    end
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    # returns true if letter
    # false if not
    return letter =~ /[a-z]/i
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common

# Intended output:
# [2, "i"]
# we get 3, "D"