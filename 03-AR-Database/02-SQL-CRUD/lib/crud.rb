require 'sqlite3'


def create_scheme(db)
  # TODO: create your db scheme
  sql = %q{
    CREATE TABLE IF NOT EXISTS posts
    (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name VARCHAR(100),
      rating INTEGER (2),
      source_url VARCHAR(200),
      date DATETIME (10)
    )
  }  # %q allows for multiline string in ruby
  db.execute(sql)
end

def create_post(db, post)

  db.execute("

  INSERT INTO posts (name, source_url, date, rating)
  VALUES ('#{post[:name]}', '#{post[:source_url]}', '#{post[:date]}', #{post[:rating].to_i})

  ")
  #TODO: add a new post to your db
end

def get_posts(db)

  all_posts = db.execute("SELECT * FROM posts")

  all_posts.each do |post|
     post = "#{post.join("','")}"
     p post
   end
   #TODO: list all posts
end

def get_post(db, id)

  post = db.execute("SELECT * FROM posts WHERE id = #{id}")
  p post
  #TODO: get a specific post
end

def update_post(db, id, name)

  update_post = db.execute("UPDATE posts SET name = '#{name}' WHERE id = #{id}")
  return update_post

	#TODO: update a post's name in your db
end

def delete_posts(db)

  db.execute("DELETE FROM posts")

  #TODO: delete a post in your db
end

def delete_post(db, id)

  db.execute("DELETE FROM posts WHERE id = #{id}")

  #TODO: delete a specific post in your db
end






