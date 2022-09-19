require_relative "../lib/todo.rb"

describe Todo do
  context "initially" do
    describe "done? method" do
      it "done? is false" do
        todo = Todo.new("Walk dog")
        expect(todo.done?).to eq false
      end
    end
  end

  context "A task has been created" do
    describe "task method" do
      it "returns task" do
        todo = Todo.new("Walk dog")
        expect(todo.task).to eq "Walk dog"
      end
    end
  end

  context "A task has been completed" do
    describe "done? method" do
      it "returns true" do
        todo = Todo.new("Walk dog")
        todo.mark_done!
        expect(todo.done?).to eq true
      end
    end
  end

  context "A task is empty" do
    it "fails if empty" do
      expect { todo = Todo.new("") }.to raise_error "ERROR, no task given"
    end
  end
end
