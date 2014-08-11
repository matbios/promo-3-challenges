require_relative '../config/application'
require_relative '../models/post'
require_relative '../models/user'

require 'faker'
require 'nokogiri'
require 'open-uri'

puts 'Seeding database...'


10.times do
  User.create(
  name:                   Faker::Name.name,
  email:                  Faker::Internet.email,
)
end


# TODO: Your code goes here
# 1. create fake users
# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users

def save_posts
  doc = Nokogiri::HTML(open("https://news.ycombinator.com/"))

  doc.search('.title a').each do |element|
    name = element.content[/">([^<]*)<[^<]a[^<]/]
    source_url = element.content[/href="(.*)\/">/]
    rating = element.content[/>([^<]*)points/]
    date = element.content[/\/a>([^<]*)\|/]

    post_params = { name: name, source_url: source_url, rating: rating, cdate: date}
    new_post = Post.create(post_params)
    user.posts << new_post

  end

end