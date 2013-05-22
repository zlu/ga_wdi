require_relative 'basic_calculator'
require_relative 'advanced_calculator'

def validate_options(resp, options)
	while !options.include? resp
	  puts "Enter valid option"
	  resp = gets.chomp
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