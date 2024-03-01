class View
  def display_tasks(tasks)
    puts "--------------------------------------"
    tasks.each_with_index do |task, i|
      status = task.done? ? "[x]" : "[ ]"
      puts "#{i + 1}. #{status} #{task.description}"
    end
    puts "--------------------------------------"
  end

  def ask_user_for_description
    puts "What do you want to do?"
    print "> "
    return gets.chomp
  end

  def ask_user_for_task_id
    puts "Which task do you want to mark as done?"
    print "> "
    return gets.chomp.to_i - 1
  end
end
