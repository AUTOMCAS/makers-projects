class Todo
  def initialize(task)
    fail "ERROR, no task given" if task.empty?
    @task = task
    @done = false
  end

  def task
    return @task
  end

  def mark_done!
    @done = true
  end

  def done?
    return @done
  end
end