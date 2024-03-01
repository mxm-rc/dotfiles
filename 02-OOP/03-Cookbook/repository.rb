class Repository
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def destroy(task)
    @tasks.delete(task)
  end

  def all
    return @tasks
  end

  def find(id)
    return @tasks[id]
  end
end
