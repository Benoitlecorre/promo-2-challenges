require './config/application'
require './models/recipe'
require './models/user'
require 'faker'

# Seed you database with recipe data from marmiton
puts "Seeding database..."
# Here is a sample of ingredients (you are free to add some !)

User.destroy_all
Post.destroy_all

# creates users with the Faker Gem
5.times do
  user.create(name: Faker::Name.name, email: Faker::Internet.email)

  3.times do
    user.posts.create(name: Faker::Lorem.sentence(4), date: Time.now, source_url: Faker::Internet.url, rating:rand(10))
  end
end


# for each user, pick randomly one ingredient or more from the list of ingredients and attach recipes to the user