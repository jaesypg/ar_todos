
class TaskView

  def self.print_a_list(id, taskname, completed)
    puts "#{id}. #{taskname} [#{completed}]"
  end

  def self.print_confirmation_msg_add(taskname)
    puts "Appended '#{taskname}' to your TODO list..."
  end

  def self.print_confirmation_msg_delete(taskname)
    puts "Deleted '#{taskname}' from your TODO list..."
  end

  def self.print_confirmation_msg_complete(taskname)
    puts "Task: '#{taskname}' marked as 'Completed'..."
  end

end