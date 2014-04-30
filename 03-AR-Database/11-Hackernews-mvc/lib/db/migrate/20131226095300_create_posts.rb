class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string      :name
      t.datetime    :date
      t.string      :source_url
      t.integer     :rating
      t.references  :user
    end
  end
end

#contenu de qualité
#le gratuit génère du traffic plus rapidement
#avec les gens sur la plateforme, j'ai des journalistes qui génèrent du contneu,
#vous l'achetez en un clic
#devenir la marge
#Repondre à cette question : business model generation, canva.
#business model canva, tu remplis les cases et tu itères
#jeux videos /
#c'est des gens de l'extérieur qui te donnent des retours
#tester avec des journalistes que je ne connais pas.
#Utiliser les journalistes web.
#Comme Aubenas
#Leur poser trois quatre questions
#Est-ce que vous faites du Long Form ou Non ?
# Ca vous plairait ? Oui, non, pourquoi ?
# et tu ITWS 15 personnes maxi parmi les influents
#AU départ il ne s'agit que 'hypothèse, des posts - it jaunes', et quand il
# est validé tu le remplaces par un truc d'une autre couleur.
#des questionnaires
#brainstorming en groupe -> Manu, Ben, Val.
#boîte de prod éditorial
#où est la solution technologique ?
#florent morin the pixelhunt
#Florent Maurin