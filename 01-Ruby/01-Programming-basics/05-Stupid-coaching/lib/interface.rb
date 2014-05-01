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

#essayer dem ettre un x = 5
# tu comptes jusqu'à 5
# en gros, quand j'active quelque chose, il me fait 1 2 3 4 5 jusqu'à cinq.
# je veux créer une toute autre scene.
# pour cela il faut revoir les itérators
# Je recrée une nouvelle situation avec des if et des unless
# recréer notamment une scène de torture (lol)
# Avec des names et tout