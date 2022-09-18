# As a user
# So that I can improve my grammar 
# I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

# Given a string
# Check if has capital letter
# Check if has punctuation at end
# Return "Grammar is good" if satisfies both 
# else return "Bad Grammar"

METHODS

grammar_check(text)

*text: a string (eg "hello!")
*check_result: a string, ("Grammar is good" or "Bad Grammar")

TESTS
grammar_check("hello") => "Bad Grammar"
grammar_check("hello!") => "Bad Grammar"
grammar_check("Hello") => "Bad Grammar"
grammar_check("Hello!") => "Grammar is good"
grammar_check("") => "Error, empty"
grammar_check() => "Error, empty"

