require_relative "../lib/todo.rb"

context "A task has been added" do
  describe "return_task" do
    it "returns task" do
      task = Todo.new("Walk dog")
      expect(task.return_task).to eq "Walk dog"
    end
  end

  describe "check_done" do
    context "task is marked as done" do
      it "returns true" do
        task = Todo.new("Walk dog")
        task.mark_done
        expect(task.check_done).to eq true
      end
    end
  end
end