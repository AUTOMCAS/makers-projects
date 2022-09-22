class TaskFormatter
  def initialize(task)
    @task = task
    @formatted = ""
  end

  def format
    @task.complete? ? @formatted = "- [X] #{@task.title}" : @formatted = "- [ ] #{@task.title}"
  end
end