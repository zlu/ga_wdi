def assign_group(group_size, students)
  number_of_groups = students.count / group_size
  group_number = 1
  students.shuffle!

  number_of_groups.times do
    assigned_group = []

    group_size.times do
      assigned_group << students.delete_at(0)
    end

    while students.size < group_size && students[0] != nil
      assigned_group << students.delete_at(0)
    end

    puts "Group #{group_number}: #{assigned_group}"
    group_number += 1
  end

end
