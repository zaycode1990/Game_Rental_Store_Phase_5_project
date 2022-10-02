require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

Game.destroy_all

def prepare
    username = Faker::Internet.username
    password = "password"
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
  
  inventory = 50
  games = Game.create!([
    {
     title: "Persona 3",
     platform:"Playstation 2",
     publisher: "Atlas",
     inventory: inventory,
     img: "app/gameboxart/112775-shin-megami-tensei-persona-3-fes-playstation-2-front-cover.jpg"
    },
    {
     title: "Metal Gear Solid 3",
     platform:"Playstation 2",
     publisher: "Kojima",
     inventory: inventory,
     img: Rails.root.join('/app', '/gameboxart/', 'metal_gear_3.jpg')
    },
    {
     title: "Devil May Cry 3",
     platform:"Playstation 2",
     publisher: "Capcom",
     inventory: inventory,
     img: "app/gameboxart/1125-devil-may-cry-3.jpg"
    },
    {
     title: "Jax 3",
     platform:"Playstation 2",
     publisher: "Naughty Dog",
     inventory: inventory,
     img: "../gameboxart/153271-jak-3-playstation-2-front-cover.jpg"
    },
    {
     title: "God of War 2",
     platform:"Playstation 2",
     publisher: "Sony",
     inventory: inventory,
     img: "../gameboxart/godofwar2.jpg"
    },
    {
     title: "Kingdom Hearts 2",
     platform:"Playstation 2",
     publisher: "Square Enix",
     inventory: inventory,
     img: "../gameboxart/kingdomhearts2.jpg"
    },
    {
     title: "Ratchet and Clank 3",
     platform:"Playstation 2",
     publisher: "Insomniac Games",
     inventory: inventory,
     img: "../gameboxart/Ratchetandclank3box.jpg"
    },
    {
     title: "Rayman: Hoodlum Havoc",
     platform:"Playstation 2",
     publisher: "Ubisoft",
     inventory: inventory,
     img: "../app/gameboxart/ps2_rayman_3_hoodlum_havoc-110214.jpg"
    },
    {
     title: "Final Fantasy X",
     platform:"Playstation 2",
     publisher: "Square Enix",
     inventory: inventory,
     img: "../gameboxart/Ffxboxart.jpg"
    },
    {
     title: "Shadow of Colossus",
     platform:"Playstation 2",
     publisher: "Sony",
     inventory: inventory,
     img: "../gameboxart/shadowofcolossus.jpg"
    },
    {
     title: "Halo 3",
     platform: "Xbox 360",
     publisher: "Bungie",
     inventory: inventory,
     img:"../gameboxart/halo3.jpg" 
    },
    {
     title: "Halo Reach",
     platform: "Xbox 360",
     publisher: "Bungie",
     inventory: inventory,
     img: "../gameboxart/800px-Halo_Reach_(Standard_with_ESRB).png"
    },
    {
     title: "Halo 4",
     platform: "Xbox 360",
     publisher: "Bungie",
     inventory: inventory,
     img: "../gameboxart/halo4.jpg"
    },
    {
     title: "Gears of War",
     platform: "Xbox 360",
     publisher: "Epic Games",
     inventory: inventory,
     img: "../gameboxart/gearsofwar.jpg"
    },
    {
     title: "Gears of War 2",
     platform: "Xbox 360",
     publisher: "Epic Games",
     inventory: inventory,
     img: "../gameboxart/15418-gears-of-war-2.png" 
    },
    {
     title: "Gears of War 3",
     platform: "Xbox 360",
     publisher:"Epic Games",
     inventory: inventory,
     img:"../gameboxart/gears-3.jpg" 
    },
    {
     title: "Fable 2",
     platform: "Xbox 360",
     publisher: "Lionhead Studios",
     inventory: inventory,
     img:"app/gameboxart/fable2.jpg" 
    },
    {
     title: "Crackdown",
     platform: "Xbox 360",
     publisher: "Microsoft Game Studios",
     inventory: inventory,
     img: "../gameboxart/crackdown.jpg" 
    },
    {
     title: "Forza Motorsport 3",
     platform: "Xbox 360",
     publisher: "Microsoft Game Studios",
     inventory: inventory,
     img: "../gameboxart/Forza_Motorsport_3_Microsoft_Xbox_360_-_Gandorion_Games.jpg" 
    },
    {
     title: "Crackdown 2",
     platform: "Xbox 360",
     publisher: "Microsoft Game Studios",
     inventory: inventory,
     img: "../gameboxart/crackdown2.jpg"
    },
    {
     title: "Donkey Kong Country Returns",
     platform: "Nintendo",
     publisher: "Nintendo",
     inventory: inventory,
     img: "../gameboxart/donkeykongcountry.jpg"
    },
    {
     title: "Super Paper Mario",
     platform: "Nintendo",
     publisher: "Nintendo",
     inventory: inventory,
     img: "../gameboxart/PaperMario.jpg"
    },
    {
     title: "Mario Galaxy",
     platform: "Nintendo",
     publisher: "Nintendo",
     inventory: inventory,
     img: "../gameboxart/mariogalaxy.jpg" 
    },
    {
     title: "Mario Galaxy 2",
     platform: "Nintendo",
     publisher: "Nintendo",
     inventory: inventory,
     img: "../gameboxart/mariogalaxy2.jpg"
    },
    {
     title: "Mario Smash Brawl",
     platform: "Nintendo",
     publisher: "Nintendo",
     inventory: inventory,
     img: "../gameboxart/mariosmashbrosbrawl.jpg"
    },
    {
     title: "The Legend of Zelda: Skyward Sword ",
     platform: "Nintendo",
     publisher: "Nintendo",
     inventory: inventory,
     img: "../gameboxart/zeldasky.jpg"
    },
    {
     title: "Metroid Prime Trilogy",
     platform: "Nintendo",
     publisher: "Nintendo",
     inventory: inventory,
     img: "../gameboxart/metroidtrilogy.jpg"
    },
    {
     title: "The Legend of Zelda: Twilight Princess",
     platform: "Nintendo",
     publisher: "Nintendo",
     inventory: inventory,
     img: "../gameboxart/zeldatwilight.jpg"
    },
    {
     title: "Xenoblade Chronicles",
     platform: "Nintendo",
     publisher: "Nintendo",
     inventory: inventory,
     img: "../gameboxart/xenobladechronicles.jpg"
    },
    {
     title: "Okami",
     platform: "Nintendo",
     publisher: "Capcom",
     inventory: inventory,
     img: "../gameboxart/Okami.jpg"
    }
  ])

  # def game_prepare
  #   title = Faker::Game.title
  #   platform = Faker::Game.platform
  #   publisher = ["Naughty Dog",
  #   "Rockstar Games",
  #   "Kojima Productions",
  #   "CD Projekt Red",
  #   "FromSoftware",
  #    "Blizzard",
  #    "Capcom",
  #    "DICE",
  #   "Bioware"].sample
  #   inventory = (1..50).to_a.sample
  #   {
  #   title: title,
  #   platform: platform,
  #   publisher: publisher,
  #   inventory: inventory 
  #   }
  # end

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
    returned = late == false ? true : false
    {   
        late: late,
        due_date: due_date,
        returned: returned
    }
    
 end


#  10.times{game = Game.create(game_prepare)}

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
    

  
  
