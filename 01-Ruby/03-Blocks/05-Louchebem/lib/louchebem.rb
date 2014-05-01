# Encoding: utf-8



def louchebemize(word)
consonnes = ["z", "r", "t", "p", "m", "l", "k", "j", "h", "g", "f", "d", "s", "q", "", "x", "w", "c", "v", "b", "n"]
voyelles = ["a", "e", "i", "o", "u", "y"]
suf_consonnes = ["em", "é", "oc", "ic", "uche", "ès"]
suf_voyelles = ["ji"]
i = 0

  if voyelles.include? (word[0])
    word.insert(0,"l")
  else
    while consonnes.include? (word[i])
      word << (word[i])
      i += 1
      word.delete_at(word.index(0))
    end
    word.insert(0,"l")
  end

end


puts louchebemize("chabibi")


#begin
#SI le mot est un mot d'une lettre il ne faut pas que tout ça s'applique

#SI le mot commence par une consonne
#1 - PRENDRE les premières consonnes et les COPIER à la fin du mot (maj/min_word)
#2 - AJOUTER UN L au début du mot
#4 - AJOUTER AU RANDOM les suffixes = ["em", "é", "oc", "ic", "uche", "ès"]
#SI le mot commence par une voyelle
#1 - AJOUTER L au premier mot
#2 - SI la dernière lettre est une voyelle = ["ji"]
#  SI la dernière lettre est une consonne = ["em", "é", "oc", "ic", "uche", "ès"]
#=end


