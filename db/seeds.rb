require 'faker'

require 'aws-sdk-s3'

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

  game1 = Game.create!(
    title: "Metal Gear Solid 3",
    platform:"Playstation 2",
    publisher: "Kojima",
    inventory: inventory,
    img: "https://vgboxart.com/boxes/PS2/1278-metal-gear-solid-3-snake-eater.jpg"
)
  game2 = Game.create!(
    title: "Devil May Cry 3",
    platform:"Playstation 2",
    publisher: "Capcom",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/540089-devil-may-cry-3-dante-s-awakening-playstation-2-manual.jpg"
)
  game3 = Game.create!(
    title: "Jax 3",
    platform:"Playstation 2",
    publisher: "Naughty Dog",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/107318-jak-3-playstation-2-front-cover.jpg"
)
  game4 = Game.create!(
    title: "God of War 2",
    platform:"Playstation 2",
    publisher: "Sony",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/116614-god-of-war-ii-playstation-2-front-cover.jpg"
)
  game5 = Game.create!(
    title: "Kingdom Hearts 2",
    platform:"Playstation 2",
    publisher: "Square Enix",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/172358-kingdom-hearts-ii-playstation-2-front-cover.jpg"
)
  game6 = Game.create!(
    title: "Ratchet and Clank 3",
    platform:"Playstation 2",
    publisher: "Insomniac Games",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/70005-ratchet-clank-up-your-arsenal-playstation-2-front-cover.jpg"
)
  game7 = Game.create!(
    title: "Rayman: Hoodlum Havoc",
    platform:"Playstation 2",
    publisher: "Ubisoft",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/20884-rayman-3-hoodlum-havoc-playstation-2-front-cover.jpg"
)
  game8 = Game.create!(
    title: "Final Fantasy X",
    platform:"Playstation 2",
    publisher: "Square Enix",
    inventory: inventory,
    img: "https://scale.coolshop-cdn.com/product-media.coolshop-cdn.com/BT7PJ5/05136f988d21467096a3d91d48b9e5ae.jpg/f/final-fantasy-x-10.jpg"
)
  game9 = Game.create!(
    title: "Shadow of Colossus",
    platform:"Playstation 2",
    publisher: "Sony",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/52946-shadow-of-the-colossus-playstation-2-front-cover.jpg"
)
  game10 = Game.create!(
    title: "Halo 3",
    platform: "Xbox 360",
    publisher: "Bungie",
    inventory: inventory,
    img: "https://vgboxart.com/boxes/PS2/1278-metal-gear-solid-3-snake-eater.jpg"
)
  game11 = Game.create!(
    title: "Halo Reach",
    platform: "Xbox 360",
    publisher: "Bungie",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/207192-halo-reach-xbox-360-front-cover.jpg"
)
  game12 = Game.create!(
    title: "Halo 4",
    platform: "Xbox 360",
    publisher: "Bungie",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/281470-halo-4-xbox-360-front-cover.jpg"
)
  game13 = Game.create!(
    title: "Gears of War",
    platform: "Xbox 360",
    publisher: "Epic Games",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/190259-gears-of-war-xbox-360-front-cover.png"
)
  game14 = Game.create!(
    title: "Gears of War 2",
    platform: "Xbox 360",
    publisher: "Epic Games",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/135373-gears-of-war-2-xbox-360-front-cover.jpg"
)
  game15 = Game.create!(
    title: "Gears of War 3",
    platform: "Xbox 360",
    publisher:"Epic Games",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/247564-gears-of-war-3-xbox-360-front-cover.jpg"
)
  game16 = Game.create!(
    title: "Fable 2",
    platform: "Xbox 360",
    publisher: "Lionhead Studios",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/156761-fable-ii-xbox-360-front-cover.png"
)
  game17 = Game.create!(
    title: "Crackdown",
    platform: "Xbox 360",
    publisher: "Microsoft Game Studios",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/99753-crackdown-xbox-360-front-cover.jpg"
)
  game18 = Game.create!(
    title: "Forza Motorsport 3",
    platform: "Xbox 360",
    publisher: "Microsoft Game Studios",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/168214-forza-motorsport-3-limited-collector-s-edition-xbox-360-front-cover.jpg"
)
  game19 = Game.create!(
    title: "Crackdown 2",
    platform: "Xbox 360",
    publisher: "Microsoft Game Studios",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/193104-crackdown-2-xbox-360-front-cover.jpg"
)
  game20 = Game.create!(
    title: "Donkey Kong Country Returns",
    platform: "Nintendo",
    publisher: "Nintendo",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/265409-donkey-kong-country-returns-wii-front-cover.jpg"
)
  game21 = Game.create!(
    title: "Super Paper Mario",
    platform: "Nintendo",
    publisher: "Nintendo",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/93918-super-paper-mario-wii-front-cover.jpg"
)
  game22 = Game.create!(
    title: "Mario Galaxy",
    platform: "Nintendo",
    publisher: "Nintendo",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/153990-super-mario-galaxy-wii-front-cover.png"
)
  game23 = Game.create!(
    title: "Mario Galaxy 2",
    platform: "Nintendo",
    publisher: "Nintendo",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/189490-super-mario-galaxy-2-wii-front-cover.png"
)
  game24 = Game.create!(
    title: "Mario Smash Brawl",
    platform: "Nintendo",
    publisher: "Nintendo",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/108708-super-smash-bros-brawl-wii-front-cover.jpg"
)
  game25 = Game.create!(
    title: "The Legend of Zelda: Skyward Sword ",
    platform: "Nintendo",
    publisher: "Nintendo",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/232101-the-legend-of-zelda-skyward-sword-limited-edition-pack-wii-other.jpg"
)
  game26 = Game.create!(
    title: "Metroid Prime Trilogy",
    platform: "Nintendo",
    publisher: "Nintendo",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/165911-metroid-prime-trilogy-wii-front-cover.jpg"
)
  game27 = Game.create!(
    title: "The Legend of Zelda: Twilight Princess",
    platform: "Nintendo",
    publisher: "Nintendo",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/73793-the-legend-of-zelda-twilight-princess-wii-front-cover.jpg"
)
  game28 = Game.create!(
    title: "Xenoblade Chronicles",
    platform: "Nintendo",
    publisher: "Nintendo",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/662468-xenoblade-chronicles-definitive-edition-nintendo-switch-front-cover.jpg"
)
  game29 = Game.create!(
    title: "Okami",
    platform: "Nintendo",
    publisher: "Capcom",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/70288-okami-playstation-2-front-cover.jpg"
  )
  # ])

  game30= Game.create!(
    title: "Persona 3",
    platform:"Playstation 2",
    publisher: "Atlas",
    inventory: inventory,
    img: "https://www.mobygames.com/images/covers/l/112775-shin-megami-tensei-persona-3-fes-playstation-2-front-cover.jpg"
  )

  # game1.image.attach(
  #   io: File.open('/public/gameboxart/metal_gear_3.jpg'), 
  #   filename: 'metal_gear_3.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game2.image.attach(
  #   io: File.open('/public/gameboxart/1125-devil-may-cry-3.jpg'), 
  #   filename: '1125-devil-may-cry-3.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game3.image.attach(
  #   io: File.open('/public/gameboxart/153271-jak-3-playstation-2-front-cover.jpg'), 
  #   filename: '153271-jak-3-playstation-2-front-cover.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game4.image.attach(
  #   io: File.open('/public/gameboxart/godofwar2.jpg'), 
  #   filename: 'godofwar2.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game5.image.attach(
  #   io: File.open('/public/gameboxart/kingdomhearts2.jpg'), 
  #   filename: 'kingdomhearts2.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game6.image.attach(
  #   io: File.open('/public/gameboxart/Ratchetandclank3box.jpg'), 
  #   filename: 'Ratchetandclank3box.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game7.image.attach(
  #   io: File.open('/public/gameboxart/ps2_rayman_3_hoodlum_havoc-110214.jpg'), 
  #   filename: 'ps2_rayman_3_hoodlum_havoc-110214.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game8.image.attach(
  #   io: File.open('/public/gameboxart/Ffxboxart.jpg'), 
  #   filename: 'Ffxboxart.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game9.image.attach(
  #   io: File.open('/public/gameboxart/shadowofcolossus.jpg'), 
  #   filename: 'shadowofcolossus.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game10.image.attach(
  #   io: File.open('/public/gameboxart/halo3.jpg'), 
  #   filename: 'halo3.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game11.image.attach(
  #   io: File.open('/public/gameboxart/haloreach.png'), 
  #   filename: 'haloreach.png', 
  #   content_type: 'image/png'
  # )
  # game12.image.attach(
  #   io: File.open('/public/gameboxart/halo4.jpg'), 
  #   filename: 'halo4.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game13.image.attach(
  #   io: File.open('/public/gameboxart/gearsofwar.jpg'), 
  #   filename: 'gearsofwar.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game14.image.attach(
  #   io: File.open('/public/gameboxart/15418-gears-of-war-2.png'), 
  #   filename: '15418-gears-of-war-2.png', 
  #   content_type: 'image/png'
  # )
  # game15.image.attach(
  #   io: File.open('/public/gameboxart/gears-3.jpg'), 
  #   filename: 'gears-3.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game16.image.attach(
  #   io: File.open('/public/gameboxart/fable2.jpg'), 
  #   filename: 'fable2.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game17.image.attach(
  #   io: File.open('/public/gameboxart/crackdown.jpg'), 
  #   filename: 'crackdown.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game18.image.attach(
  #   io: File.open('/public/gameboxart/Forza_Motorsport_3_Microsoft_Xbox_360_-_Gandorion_Games.jpg'), 
  #   filename: 'Forza_Motorsport_3_Microsoft_Xbox_360_-_Gandorion_Games.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game19.image.attach(
  #   io: File.open('/public/gameboxart/crackdown2.jpg'), 
  #   filename: 'crackdown2.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game20.image.attach(
  #   io: File.open('/public/gameboxart/donkeykongcountry.jpg'), 
  #   filename: 'donkeykongcountry.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game21.image.attach(
  #   io: File.open('/public/gameboxart/PaperMario.jpg'), 
  #   filename: 'PaperMario.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game22.image.attach(
  #   io: File.open('/public/gameboxart/mariogalaxy.jpg'), 
  #   filename: 'mariogalaxy.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game23.image.attach(
  #   io: File.open('/public/gameboxart/mariogalaxy2.jpg'), 
  #   filename: 'mariogalaxy2.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game24.image.attach(
  #   io: File.open('/public/gameboxart/mariosmashbrosbrawl.jpg'), 
  #   filename: 'mariosmashbrosbrawl.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game25.image.attach(
  #   io: File.open('/public/gameboxart/zeldasky.jpg'), 
  #   filename: 'zeldasky.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game26.image.attach(
  #   io: File.open('/public/gameboxart/metroidtrilogy.jpg'), 
  #   filename: 'metroidtrilogy.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game27.image.attach(
  #   io: File.open('/public/gameboxart/zeldatwilight.jpg'), 
  #   filename: 'zeldatwilight.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game28.image.attach(
  #   io: File.open('/public/gameboxart/xenobladechronicles.jpg'), 
  #   filename: 'xenobladechronicles.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game29.image.attach(
  #   io: File.open('/public/gameboxart/Okami.jpg'), 
  #   filename: 'Okami.jpg', 
  #   content_type: 'image/jpg'
  # )
  # game30.image.attach(
  #   io: File.open('/public/gameboxart/112775-shin-megami-tensei-persona-3-fes-playstation-2-front-cover.jpg'), 
  #   filename: '112775-shin-megami-tensei-persona-3-fes-playstation-2-front-cover.jpg', 
  #   content_type: 'image/jpg'
  # )

  # def game_prepare
  #  title = Faker::Gametitle
  #  platform = Faker::ame.platform
  #  publisher = ["Nauhty Dog",
  #  "Rockstar Games"
  #   "Kojima Productions",
  #   "CD Projekt Red",
  #   "FromSoftware",
  #    "Blizzard",
  #    "Capcom",
  #    "DICE",
  #   "Bioware"].sample
  #   inventory = (1..50).to_a.sample
  #   {
  #  title:title,
  #  platfrm: platform,
  #  publsher: publisher,
  #  invntory: inventory 
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
  title:title,
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

User.create(
  first_name: "Isaiah",
  last_name: "Jefferson",
  username: "admin",
  password: "password", 
  admin: true, 
  phone_number: "4348652754", 
  email: "ijandicos90@gmail.com",
  city: "Richmond", 
  state: "Virginia",
  country: "USA",
  zip: 23580,
  credit_card: "0956345612345678")

#  10.times{game = Game.create(game_prepare)}

  counter = 1 

  10.times {
    user = User.create(prepare)
    subscription = Subscription.create(sub_status: "tier 1", sub_fee: 12.50, user_id: user.id)
    # user.games  << Game.find(counter)
    counter += 1 
    review = GameReview.create(review_prepare)
    review.user_id = user.id 
    review.game_id = Game.all.sample.id
    review.save
    
    }
  