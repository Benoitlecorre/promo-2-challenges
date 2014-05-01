require 'open-uri'
require 'nokogiri'

html_file = open("http://www.pokebip.com/pokemon/pokedex/index.php?phppage=att.liste")
html_doc = Nokogiri::HTML(html_file)
#resultat de l'ananonce pour un produit
attacks =[]

html_doc.search('table.liste_att tr.liste_att').each do |element|
    all_attacks =  element.search('td').inner_text

    pokemon = {
      name: all_attacks[0],
      summary: all_attacks[2],
      }

    attacks << pokemon
end

print attacks