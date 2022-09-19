def reading_time_calculator(text)
  fail "Error" if text == "" || text == nil
  number_of_words = text.split(" ").length
  predicted_reading_time = (number_of_words.to_f / 200).ceil 
end