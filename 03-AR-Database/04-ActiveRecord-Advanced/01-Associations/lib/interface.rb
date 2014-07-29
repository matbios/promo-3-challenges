require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'

User.destroy_all

User.create(name: "bill", email: "bill@bill.com")
User.create(name: "bob", email: "bob@bill.com")
User.create(name: "billy", email: "billy@bill.com")
User.create(name: "brando", email: "brando@bill.com")

#p User.all

def ask(prompt)
  print "#{prompt} "
  gets.to_s.chomp
end

def create_post(user)
  name = ask('Name:')
  source_url = ask('Source URL:')
  rating = ask('Rating:')
  post_params = { name: name, source_url: source_url, date: Time.now, rating: rating }
  new_post = Post.create(post_params)
  user.posts << new_post
  # TODO: use ActiveRecord to add a new post for the user logged in!
end

def list_posts(user)
  p user.posts
  # TODO: use ActiveRecord to get all posts of the current user
end

def delete_posts(user)
  user_posts = user.posts
  user_posts.destroy_all
  # TODO: use ActiveRecord to delete all posts of current user
  #done
end



  logged_in = false

  until logged_in
    puts 'Please login with your <id>'
    id = gets.chomp.to_i
    logged_in = true
    user = User.find(id)

  end

  while true

  puts "Hey #{user.name}, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Exit"

  case ask('>').to_i
  when 1 then create_post(user)
  when 2 then list_posts(user)
  when 3 then delete_posts(user)
  when 4 then break
  end
end
