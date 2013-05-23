require_relative 'assign_groups'
require_relative 'validations'

loop do
  students = ['David', 'Djohny', 'Remy', 'Lane', 'Jimmy', 'Thiago', 'Isabel', 'Alex', 'Fransico', 'Bernard', 'Tricia', 'Chris', 'Michael', 'Lee', 'Tanay', 'Ryan', 'Andrew', 'Frank', 'Sugalya', 'MikeR', 'George', 'MikeS', 'David', 'Jamie']
  puts 'How many people would you like per group?'
  group_size = gets.chomp.to_i

  validate_group_size(students, group_size)

  assign_group(group_size, students)

  puts "Would you like to reassign these groups? (y)es or (n)o"
  continue = gets.chomp.downcase
  validate_reassign(continue, ['y', 'n'])

  break if continue == 'n'

  puts "REASSIGNED GROUPS"
end

puts "Thanks for using my app!"
