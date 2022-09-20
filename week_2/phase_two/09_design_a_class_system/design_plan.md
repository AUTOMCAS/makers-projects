{{PROBLEM}} Multi-Class Planned Design Recipe
1. Describe the Problem
As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries


Create a diary
  Add entries
  read entries
  Return entries based on words per min (wpm) and available reading time

  Todo list alongside diary
    reuse from previous exercise?
      Add task
      View complete tasks
      View incomplete tasks
      Tick things off

  Keep track of contacts
    Filter out mobile phone numbers from diary entries. and return


2. Design the Class System

class Diary
  def initialize
    # ...
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Entry gets added to entries list
    # Returns nothing
  end

  def all_entries
    # Returns a list of entries
  end

  def count_words
    # needed for below calculation
    # Returns number of words in all diary entries
  end

  def readable_entries_in_time(wpm, time) # both integers, time in minutes, wpm - words per minute
    # Returns diary entry with read time closest to time given
  end

  def todolist
    # Return TodoList
  end

  def return_contacts 
    # Returns mobile phone numbers filtered from all entries
  end 
end

class DiaryEntry
  def initialize(title, content) # title and content are both strings
  end

  def title
    # Returns the entry title (string)
  end

  def content
    # Returns the entry content (string)
  end

  def count_words
    # Returns the word count for the entry content (integer)
  end

  def reading_time(wpm) #wpm is integer
    # time to read the contents in mins
  end
end

class TodoList
  def initialize
    # list of tasks
  end

  def add(task)
    # Add task to tasklist
    # Task is an instance of Todo
    # Return nothing
  end

  def incomplete
    # Return a list of incomplete tasks
  end

  def complete
    # Return a list of complete tasks
  end
end


classs Todo
  def initialize(task) # task is a string
    # Create task
  end

  def return_task
    # Return task
  end

  def check_done
    # check if task is done
    # Return true if done or false if not
  end

  def mark_done
    # Mark a task as done
    # Return nothing
  end
end


3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# EXAMPLE

# Gets all tracks
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]
4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# EXAMPLE

# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
Encode each example as a test. You can add to the above list as you go.

5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.