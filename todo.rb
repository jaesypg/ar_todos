require_relative 'config/application'
# require_relative 'app/models/task'

#puts "Put your application code in #{File.expand_path(__FILE__)}"

action = ARGV[0]

case action
  when 'list'
    TaskController.list
  when 'add'
    ARGV.delete(ARGV[0])
    taskname = ARGV.join(" ")
    TaskController.add(taskname)
  when 'delete'
    taskid = ARGV[1]
    TaskController.delete(taskid)
  when 'complete'
    taskid = ARGV[1]
    TaskController.mark_complete(taskid)
end