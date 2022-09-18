Problem

name: task_tracker
given text (string)
check if the string includes the string "#TODO"
return true or false

# include? "#TODO"

Method signature

todo_present = task_tracker(text)

text: a string (eg "#TODO Walk dog")
todo_present: a boolean (true or false)

No side effects

Test examples

task_tracker("#TODO Walk dog") => true
task_tracker("#TODO Wash car") => true
task_tracker("Walk dog #TODO ") => true
task_tracker("Walk dog") => false
task_tracker("") => false

Given the user brief, we can assume that text will always be a string (not an integer etc), and not empty.

# Could test for empty string anyway but at this point it seems to satisfy the brief.
