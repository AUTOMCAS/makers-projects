require "task_list"
require "task"

RSpec.describe "tasks integration" do
  context "it adds simple tasks" do
    before(:each) do
        @task_list = TaskList.new
        @task_1 = Task.new("Walk the dog")
        @task_2 = Task.new("Walk the cat")
        @task_list.add(@task_1)
        @task_list.add(@task_2)
    end

    it "returns list of tasks" do
      expect(@task_list.all).to eq [@task_1, @task_2]
    end

    it "marks tasks as complete" do
      @task_1.mark_complete
      @task_2.mark_complete
      expect(@task_list.all_complete?).to eq true
    end
  end

  it "returns a formatted task list of uncompleted tasks" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    formatted_task_1 = TaskFormatter.new(task_1)
    formatted_task_2 = TaskFormatter.new(task_2)    
    task_list.add(formatted_task_1.format)
    task_list.add(formatted_task_2.format)
    expect(task_list.all).to eq ["- [ ] #{task_1.title}", "- [ ] #{task_2.title}"]
  end 

  it "returns a formatted task list of completed tasks" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_1.mark_complete
    task_2.mark_complete
    formatted_task_1 = TaskFormatter.new(task_1)
    formatted_task_2 = TaskFormatter.new(task_2)    
    task_list.add(formatted_task_1.format)
    task_list.add(formatted_task_2.format)
    expect(task_list.all).to eq ["- [X] #{task_1.title}", "- [X] #{task_2.title}"]
  end 

end

  
