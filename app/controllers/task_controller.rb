# require_relative 'config/application'

class TaskController < ActiveRecord::Base

  def self.list
    Task.all.each do |t|
      #puts "#{t[:id]}. #{t[:name]}"
      c_status = "In Progress"
      c_status = "Completed" if t.completed == 1
      TaskView.print_a_list(t.id, t.name, c_status)
    end
  end

  def self.add(taskname)
    Task.create name: taskname,
                completed: 0
    #puts "Appended '#{taskname}' to your TODO list..."
    TaskView.print_confirmation_msg_add(taskname)
  end

  def self.delete(taskid)
    taskname = Task.find(taskid).name
    Task.find(taskid).destroy
    TaskView.print_confirmation_msg_delete(taskname)
  end

  def self.mark_complete(taskid)
    taskname = Task.find(taskid).name
    Task.find(taskid).update_columns(completed: 1)
    TaskView.print_confirmation_msg_complete(taskname)
  end

end