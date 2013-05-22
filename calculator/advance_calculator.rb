def advanced_calculator
  print "(p)ower, (s)qrt: "
  resp = gets.chomp
  
  validate_options(resp, ["p", "s"])
  
  if resp == "p"
    print "First number: "
    first = gets.chomp.to_f
    print "Second number: "
    second = gets.chomp.to_f

    puts first ** second

  elsif resp == "s"
    print "The number: "
    number = gets.chomp.to_f

    puts Math.sqrt(number)
  end
end