require_relative "../config/application"
require_relative "../models/post"
require_relative "../models/user"
require_relative "../db/scraper.rb"

# Seed you database with post data from hacker news
# And fake users using Faker gem

puts "Seeding database..."

#TODO: Your code goes here
# 1. create fake users

users = []
5.times do
users << User.create (name: Faker::Name.name, source_url: Faker::Internet.email)
end

# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users
posts = ScraperHackerNews.new.scrap
posts.each do |post|
  users.sample.posts.create(post)
end



=begin

puts "Which ingredient?"
ingredient = gets.chomp

response_file = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}")

p response_file

doc = Nokogiri::HTML(response_file)

doc.search('.m_search_result').each do |element|
    puts "#{element.search('.m_search_titre_recette > a').inner_text}"
    puts "Rating : #{element.search('.etoile1').size}
=end

#inner_text pour title
# pour le lien a href