# 1 Describe the problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

# class name: task_tracker

# task add and view method
# input: add tasks 
# output: list of tasks

# task_completer method
# input: mark test as complete
# remove task from list

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

Don't worry about user input & output here.


# 2. Design

The interface of a class includes:

The name of the class.
The design of its initializer and the parameters it takes.
The design of its public methods, including:
Their names and purposes
What parameters they take and the data types.
What they return and that data type
Any other side effects they might have.

# class name: TaskTracker
# initializer
  @task_list: a list (eg ["Walk dog", "Hoover"])
# methods
  add_task(task)
    Input: (task) a string (eg "Walk dog")
    Does: Adds a task to @task_list
    Returns: @task_list

  task_ticker(task_num)
    Input: (task_num) integer (eg 1)
    Does: removes given task from @task_list
    Returns: (modified @task_list) list (eg ["Walk dog"])


