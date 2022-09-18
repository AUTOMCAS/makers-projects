class ClassTracker
  def initialize
    @task_list = []
  end

  def add_task(task)
    @task_list << task
  end

  def task_ticker(task_num)
    @task_list.slice!(task_num -1 )
    @task_list
  end
end
