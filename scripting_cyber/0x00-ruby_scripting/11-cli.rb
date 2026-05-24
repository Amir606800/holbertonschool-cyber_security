#!/usr/bin/env ruby

require 'optparse'

TASK_FILE = 'tasks.txt'

# Load tasks from file
def load_tasks
  return [] unless File.exist?(TASK_FILE)

  File.readlines(TASK_FILE).map(&:strip)
end

# Save tasks to file
def save_tasks(tasks)
  File.open(TASK_FILE, "w") do |file|
    tasks.each { |task| file.puts(task) }
  end
end

options = {}

OptionParser.new do |opts|
  opts.banner = "Usage: cli.rb [options]"

  opts.on("-aTASK", "--add TASK", "Add a new task") do |task|
    options[:add] = task
  end

  opts.on("-l", "--list", "List all tasks") do
    options[:list] = true
  end

  opts.on("-rINDEX", "--remove INDEX", Integer, "Remove a task by index") do |index|
    options[:remove] = index
  end

  opts.on("-h", "--help", "Show help") do
    puts opts
    exit
  end
end.parse!

# Add task
if options[:add]
  tasks = load_tasks
  tasks << options[:add]
  save_tasks(tasks)
  puts "Task '#{options[:add]}' added."

# List tasks
elsif options[:list]
  tasks = load_tasks
  tasks.each_with_index do |task, index|
    puts "#{index + 1}. #{task}"
  end

# Remove task
elsif options[:remove]
  tasks = load_tasks
  index = options[:remove] - 1

  if index >= 0 && index < tasks.length
    removed = tasks.delete_at(index)
    save_tasks(tasks)
    puts "Task '#{removed}' removed."
  else
    puts "Invalid task index."
  end

else
  puts "Usage: cli.rb [options]"
end
