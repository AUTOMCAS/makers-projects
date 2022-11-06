require "task_list"

RSpec.describe TaskList do
  let(:task_list) {TaskList.new}

  it "initially has an empty list" do
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    expect(task_list.all_complete?).to eq false
  end

  describe "all" do
    it "returns task list" do
      task_list
      task_1 = double :task
      task_2 = double :task
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all).to eq [task_1, task_2]
    end
  end

  describe "all_complete?" do
    it "marks tasks as complete" do
      task_list
      task_list.add(double(:task_1, complete?: true))
      task_list.add(double(:task_2, complete?: true))
      expect(task_list.all_complete?).to eq true
    end
  end
end
