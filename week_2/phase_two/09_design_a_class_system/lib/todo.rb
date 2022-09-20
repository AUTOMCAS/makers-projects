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

  def check_for_contacts
  end

  def return_contacts
  end
end