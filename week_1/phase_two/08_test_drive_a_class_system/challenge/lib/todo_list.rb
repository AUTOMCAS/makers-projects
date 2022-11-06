class TodoList
  def initialize
    @list = []
  end

  def add(todo)
    @list << todo
  end

  def incomplete
    @list.filter do |todo|
      !todo.done?
    end
  end

  def complete
    @list.filter do |todo|
      todo.done?
    end
  end

  def give_up!
    @list.map do |todo|
      todo.mark_done!
    end
  end
end