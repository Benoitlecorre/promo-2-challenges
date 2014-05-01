require 'open-uri'
require 'nokogiri'


class Scrapping

  def Initialize(titre, rate)
    @titre
    @rate
  end

end

#new.Scrapping(titre, rate)

  puts "Quel ingredient ?"
  ingredient = gets.chomp

  response_file = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}")

  doc = Nokogiri::HTML(response_file)

  doc.search('.m_search_result').each do |element|
     @titre = "element.search('.m_search_titre_recette > a').inner_text"
     @rate = "Rating : #{element.search('.etoile1').size / 5}"
  end




# def load_csv(file)
#    @contents = []
#      CSV.foreach(file) do|row|
#        contents << row
#    end
#  end



#JE VEUX QUE LE FICHIER DE SCRAPPING REMPLISSE lE CSV
#Ca doit remplir un tableau en fait

#http://www.marmiton.org/recettes/recherche.aspx?aqt=fraise--marmiton.html

=begin
#Scrapping : récupérer des données d'une page HTML

1 la première chose c'est reperer la structure et choper l'url
Gnre on peut chopper les menus, les recettes
<div class="m_search_note_recette">
                                <div class="etoile1"></div>
                                                    <div class="etoile1"></div>
                                                    <div class="etoile1"></div>
                                                    <div class="etoile1"></div>
                                                    <div class="etoile1"></div>
                                                    <div style="clear:both"></div>
                            </div>

<div class="etoile0"></div>

Quand il y a etoile 0 -> Pas d'étoile

On peut prendre un nouveau sélecteur.
<div class="m_search_result_part4">
                            Préparation : 60 min Cuisson : 25 min Ingrédients (pour 8 personnes) : - 1 pâte sablée - 15 cl de crème liquide - 90 g de beurre - 200 g de chocolat blanc - 200 g de chocolat au lait - 200 g de chocolat noir Préparation : Préchauffer le four à 200°C (thermostat 6-7) et mettre la pâte dans un moule à&nbsp;[...]
                          </div>
=end



#.m_search_titre_recette a
#.m_search_note_recette