require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.
your_message = gets.chomp

puts coach_answer(your_message)

until
your_message == "I am going to work right now SIR !"
your_message = gets.chomp
puts coach_answer_enhanced(your_message)
puts coach_answer(your_message)
end
