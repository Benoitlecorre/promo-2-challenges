puts "bonjour"
response = ""

until response == "je vais aller travailler"

  puts "Es-tu prêt pour aller à la salle de gym ?"
  response = gets.chomp

  #Reactions du coach a mes reponses
  if response.include? "?"
    puts "je m'en tape"
  else
    puts "depeche toi et va à la salle"
  end

end