class Todo
  def initialize(task)
    @task = task
    @done = false
  end

  def return_task
    return @task
  end

  def check_done
    @done
  end

  def mark_done
    @done = true
  end

end