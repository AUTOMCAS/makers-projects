class GrammarStats
  def initialize
    @text_passed_tracker = {
      passses: 0,
      fails: 0
    }
  end

  def check(text) # text is a string
    if text[0] == text[0].upcase && text[-1].match(/[!.?]/)
      @text_passed_tracker[:passses] += 1
      return true
    else
      @text_passed_tracker[:fails] += 1
      return false
    end

    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good
    total_checks = @text_passed_tracker[:passses] + @text_passed_tracker[:fails]
    (@text_passed_tracker[:passses].to_f / total_checks * 100).to_i
    
    # number / total * 100
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end