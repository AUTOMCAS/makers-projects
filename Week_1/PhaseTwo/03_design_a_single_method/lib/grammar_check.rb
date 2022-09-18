def grammar_check(text)
  if text == "" || text == nil
    fail "Error, empty"
  elsif text[0] == text[0].upcase && text[-1].match(/[!.?]/)
    "Grammar is good"
  else
    "Bad Grammar"
  end
end