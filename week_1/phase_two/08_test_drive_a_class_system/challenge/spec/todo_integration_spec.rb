require_relative "../lib/todo.rb"
require_relative "../lib/todo_list.rb"

describe "TODO integration" do
  context "After adding a single task" do
    it "return list of incomplete tasks" do
      todolist = TodoList.new
      todo_1 = Todo.new("Walk dog")
      todolist.add(todo_1)
      expect(todolist.incomplete).to eq [todo_1]
    end
    context "After completing a task" do
      it "return list of complete tasks" do
        todolist = TodoList.new
        todo_1 = Todo.new("Walk dog")
        todolist.add(todo_1)
        todo_1.mark_done!
        expect(todolist.complete).to eq [todo_1]
      end
    end
  end

  context "After adding two tasks and marking one complete" do
    it "return list of complete tasks" do
      todolist = TodoList.new
      todo_1 = Todo.new("Walk dog")
      todo_2 = Todo.new("Hoover")
      todolist.add(todo_1)
      todolist.add(todo_2)
      todo_1.mark_done!
      expect(todolist.complete).to eq [todo_1]
    end

    it "return list of complete tasks" do
      todolist = TodoList.new
      todo_1 = Todo.new("Walk dog")
      todo_2 = Todo.new("Hoover")
      todolist.add(todo_1)
      todolist.add(todo_2)
      todo_1.mark_done!
      expect(todolist.incomplete).to eq [todo_2]
    end
    context "give_up! methodis called" do
      it "return list of call tasks completed" do
        todolist = TodoList.new
        todo_1 = Todo.new("Walk dog")
        todo_2 = Todo.new("Hoover")
        todolist.add(todo_1)
        todolist.add(todo_2)
        todolist.give_up!
        expect(todolist.complete).to eq [todo_1, todo_2]
      end
    end
  end
end