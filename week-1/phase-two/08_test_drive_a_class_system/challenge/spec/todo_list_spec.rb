require_relative "../lib/todo_list.rb"

describe TodoList do
  context "initially" do
    it "has empty list" do
      todolist = TodoList.new
      expect(todolist.incomplete).to eq []
      expect(todolist.complete).to eq []
    end
  end

  context "A task is empty" do
    it "fails if empty" do
      todolist = TodoList.new
      expect { todolist.add(Todo.new("")) }.to raise_error "ERROR, no task given"
    end
  end
end