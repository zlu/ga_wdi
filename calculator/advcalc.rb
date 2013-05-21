require_relative 'basic_calculator'

def validate_options(resp, options)
	while !options.include? resp
	  puts "Enter valid option"
	  resp = gets.chomp
	end	
end

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

def menu
  print "(b)asic, (a)dvanced, (q)uit: "
  ans = gets.chomp

  while ans != "q"
    case ans
    when "b"
      BasicCalculator.new.menu
    when "a"
      advanced_calculator
    when "q"
      puts "Quitting"
    end
    print "(b)asic, (a)dvanced, (q)uit: "
    ans = gets.chomp
  end
end

menu