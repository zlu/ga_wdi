require 'pry'
require 'rainbow'

n = ['ts', '34th', '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']

mta = {}

mta[:n] = n
mta[:l] = l
mta[:s] = s

puts `clear`
puts "***MTA***".color('#0033ff')
print "\nWhat train do you want to get on: #{mta.keys.join(', ')}? ".color('#ff3300')
start_train = gets.chomp.to_sym
print "Which stop: #{mta[start_train].join(', ')}? ".color('#ff3300')
stop_a = gets.chomp

print "\nWhat train do you want to get off: #{mta.keys.join(', ')}? ".color('#ff0033')
stop_train = gets.chomp.to_sym
print "Which stop: #{mta[stop_train].join(', ')}? ".color('#ff0033')
stop_b = gets.chomp

intersection = (mta[start_train] & mta[stop_train]).first

if start_train != stop_train
  stop_a_index = mta[start_train].index(stop_a)
  stop_a_intersection_index = mta[start_train].index(intersection)
  trip_a_length = (stop_a_index - stop_a_intersection_index).abs

  stop_b_index = mta[stop_train].index(stop_b)
  stop_b_intersection_index = mta[stop_train].index(intersection)
  trip_b_length = (stop_b_index - stop_b_intersection_index).abs

  total_length_of_trip = trip_a_length + trip_b_length
else
  stop_a_index = mta[start_train].index(stop_a)
  stop_b_index = mta[stop_train].index(stop_b)
  total_length_of_trip = (stop_a_index - stop_b_index).abs
end

puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n".color('#ff9900')
