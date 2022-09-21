require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

def prepare
    username = Faker::Internet.username
    password = Faker::Internet.password
    admin = Faker::Boolean.boolean(true_ratio: 0.2)
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    phone_number = Faker::PhoneNumber.phone_number
    email = Faker::Internet.email
    city = Faker::Address.city
    state = Faker::Address.state
    country = Faker::Address.country
    zip = Faker::Address.zip  
    credit_card = Faker::Finance.credit_card
    {username: username,
     password: password, 
     admin: admin,
     first_name: first_name,
     last_name: last_name, 
     phone_number: phone_number, 
     email: email,
     city: city, 
     state: state,
     country: country,
     zip: zip,
     credit_card: credit_card
     }
  end

  def game_prepare
    title = Faker::Game.title
    platform = Faker::Game.platform
    publisher = ["Naughty Dog",
    "Rockstar Games",
    "Kojima Productions",
    "CD Projekt Red",
    "FromSoftware",
     "Blizzard",
     "Capcom",
     "DICE",
    "Bioware"].sample
    inventory = (1..50).to_a.sample
    {
    title: title,
    platform: platform,
    publisher: publisher,
    inventory: inventory 
    }
  end

  def sub_prepare
  sub_status = ["tier 1", "tier 2"].sample
  sub_fee = sub_status == "tier 1" ? 12.50 : 30
  {
    sub_status: sub_status,
    sub_fee: sub_fee
  }
  end

  def review_prepare
  title = Faker::Lorem.word
  desc = Faker::Lorem.paragraph(sentence_count: 4)
  {
    title: title,
    desc: desc
  }
  end
 
 def user_game_prepare
    late = Faker::Boolean.boolean(true_ratio: 0.2)
    due_date = DateTime.new(2022, 9, 20)
    returned = late = false ? true : false
    {   
        late: late,
        due_date: due_date,
        returned: returned
    }
    
 end


 10.times{game = Game.create(game_prepare)}

  counter = 1 

  10.times {
    user = User.create(prepare)
     subscription = Subscription.create(sub_status: "tier 1", sub_fee: 12.50, user_id: user.id)
        user.games  << Game.find(counter)
     counter += 1 
     review = GameReview.create(review_prepare)
     review.user_id = user.id 
     review.game_id = Game.all.sample.id
     review.save
     
    }
    

  
  
  

