require_relative 'config/application'
require_relative 'crud'


def ask_and_get(param)
  puts "What is the #{param} of your piece of news?"
  gets.chomp
end


db = SQLite3::Database.new(DB_PATH.to_s)

while true

  puts "Hey you, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Update post"
  puts "5. Exit"

	choice =  gets.chomp.to_i

	case choice
  when 1
    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating")
    post = { name: name, source_url: source_url, date: Time.now, rating: rating }
    create_post(db, post)
  when 2
    array_posts = get_posts(db)
    #TODO: prints nicely the results from DB queries (you could use #strftime to format datetime display)
    # Prints bien les résultats de notre DB queries
    puts "Here are all the posts you wrote"
    array_posts.each do |post|
      puts "Rate : #{post[0]}, Title : #{post[1]}, Url #{post[2]}, #{post[3]}"
    end

  when 3
    delete_posts(db)
  #TODO: add other CRUD tasks to your interface if you wish!
  when 4
    array_posts = get_posts(db)
    array_posts.each do |post|
      puts "Id : #{post[0]}, Title : #{post[1]}, Url #{post[2]}, #{post[3]}"
    end
    id = ask_and_get("id")
    puts "Which name do you want to put now ?"
    name = gets.chomp
    update_post(db, id, name)
  when 5
    break
	end

end

