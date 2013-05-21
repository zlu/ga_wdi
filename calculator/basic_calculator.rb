class BasicCalculator
	def calculate(resp, first, second)
		case resp
		when "a"
		  first + second
		when "s"
		  first - second
		when "m"
		  first * second
		when "d"
		  first / second
		end
	end

	def menu
	  print "(a)dd, (s)ubtract, (m)ultiple, (d)ivide: "
	  resp = gets.chomp
	  
	  validate_options(resp, ["a", "s", "m", "d"])

	  print "First number: "
	  first = gets.chomp.to_f
	  print "Second number: "
	  second = gets.chomp.to_f

	  puts calculate(resp, first, second)
	end
end