def validate_group_size(students, group_size)


  while (students.count / group_size) < 1
    puts "There aren't #{group_size} students in this class!"
    puts "Let's try this again..."
    puts 'How many people would you like per group?'
    group_size = gets.chomp.to_i
  end
end

def validate_reassign(continue, options)
  while !options.include? continue
    puts "#{continue} is not an option."
    puts "Would you like to reassign these groups? (y)es or (n)o"
    continue = gets.chomp.downcase
  end
end
