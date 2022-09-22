require "task_formatter"

context "given an uncompleted task"do
  it "returns formatted uncompleted task" do
    task = double(:task, title: "Walk dog", complete?: false)
    formatter = TaskFormatter.new(task)
    expect(formatter.format).to eq "- [ ] Walk dog"
  end
end

context "given a completed task"do
  it "returns formatted completed task" do
    task = double(:task, title: "Walk dog", complete?: true)
    formatter = TaskFormatter.new(task)
    expect(formatter.format).to eq "- [X] Walk dog"
  end
end 