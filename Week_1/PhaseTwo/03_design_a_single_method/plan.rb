Desribe the problem
# Given a string
# given reading speed of 200 words / min
# create and return estimate of expected reading time

Design the Method Signature
predicted_reading_time = reading_time_calculator(text)

* text: a string (eg "This is a story about a cat who did x")
* predicted_reading_time: a string (eg "50 mins")

# The method doesn't print anything or have any other side-effects

Create Examples as Tests 

reading_time_calculator("Hello") =>  1 # rounding up
reading_time_calculator(ONE_HUNDERED_WORDS) => 1 # rounding up
reading_time_calculator(TWO_HUNDERED_WORDS) => 1
reading_time_calculator(THREE_HUNDERED_WORDS) => 2 # rounding up
reading_time_calculator(FOUR_HUNDERED_WORDS) => 2
reading_time_calculator("") => "Error"
reading_time_calculator(nil) => "Error"

