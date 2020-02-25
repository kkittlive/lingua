# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserQualification.destroy_all
LanguageSkill.destroy_all
Qualification.destroy_all
Language.destroy_all
User.destroy_all

user_seed = [
  { email: 'hellfire@mac.com',
    password: '12345678',
    first_name: 'Lori',
    last_name: 'Squire',
    phone_number: '999 888 7777',
    age: 25,
    gender: 'female',
    location: 'Chicago, USA',
    availability: 'weekday mornings',
    biography: "I'm baby anim tattooed activated charcoal, chillwave banjo letterpress incididunt man braid pickled palo santo. Laboris 3 wolf moon pork belly cliche mumblecore beard PBR&B, est heirloom chia shaman. Cornhole waistcoat biodiesel pitchfork. Tumeric lo-fi raclette, hexagon ramps hammock slow-carb letterpress XOXO mixtape DIY ut meh pour-over. Literally vegan do etsy aliqua edison bulb deep v qui. Enamel pin culpa fugiat copper mug celiac chambray unicorn locavore raclette wolf four dollar toast four loko kale chips poke master cleanse. Messenger bag freegan tempor gentrify, yr butcher ugh umami.",
    is_teacher: true
  },
  { email: 'spadkins@att.net',
    password: '12345678',
    first_name: 'Jasmine',
    last_name: 'Manessis',
    phone_number: '999 888 7777',
    age: 32,
    gender: 'female',
    location: 'Sydney, Australia',
    availability: 'weekends',
    biography: "Vegan ramps ut palo santo dolor knausgaard consectetur pok pok echo park. Letterpress chambray typewriter hoodie roof party officia elit humblebrag direct trade helvetica do. Williamsburg letterpress raw denim DIY in pinterest kogi culpa dolore dreamcatcher slow-carb irony subway tile fingerstache. Post-ironic ut four dollar toast, live-edge iceland incididunt lo-fi. Paleo mumblecore normcore pug craft beer, exercitation hella forage viral schlitz.",
    is_teacher: true
  },
  { email: 'luebke@hotmail.com',
    password: '12345678',
    first_name: 'Bruno',
    last_name: 'Oliveira',
    phone_number: '999 888 7777',
    age: 19,
    gender: 'male',
    location: 'Rio de Janeiro, Brazil',
    availability: 'monday wednesday friday evenings',
    biography: "Viral est waistcoat helvetica, church-key deserunt jean shorts. Fugiat direct trade food truck exercitation, lorem duis blog hoodie tattooed aliquip art party cray affogato irure kogi. In franzen typewriter scenester copper mug poke. Stumptown meditation pug, aliqua mixtape direct trade labore fixie waistcoat. Kogi coloring book vexillologist knausgaard.",
    is_teacher: true
  },
  { email: 'eimear@optonline.net',
    password: '12345678',
    first_name: 'Hui',
    last_name: 'Chao',
    phone_number: '999 888 7777',
    age: 37,
    gender: 'male',
    location: 'Beijing, China',
    availability: 'all day every day',
    biography: "I'm baby laborum umami kombucha hella chia ad incididunt synth. Shoreditch hot chicken coloring book, single-origin coffee yuccie mollit pinterest sint disrupt waistcoat. Gentrify aute migas hammock umami before they sold out proident kinfolk tbh raclette keytar. Bushwick franzen jean shorts sint beard organic edison bulb direct trade semiotics celiac salvia craft beer umami.",
    is_teacher: true
  },
  { email: 'phyruxus@hotmail.com',
    password: '12345678',
    first_name: 'Claude',
    last_name: 'Bouvier',
    phone_number: '999 888 7777',
    age: 29,
    gender: 'male',
    location: 'Bordeaux, France',
    availability: 'weekdays mid-day',
    biography: "Single-origin coffee pitchfork meh, pop-up velit stumptown hoodie af pariatur tumeric banjo yuccie kogi celiac. Deserunt disrupt officia, succulents lo-fi XOXO authentic kogi salvia asymmetrical tumeric cupidatat woke et. 8-bit iPhone adipisicing, direct trade neutra raw denim food truck. Photo booth ramps activated charcoal whatever flexitarian vegan godard.",
    is_teacher: true
  },
  { email: 'malattia@sbcglobal.net',
    password: '12345678',
    first_name: 'John',
    last_name: 'Doe',
    phone_number: '999 888 7777',
    age: 56,
    gender: 'male',
    location: 'London, England',
    availability: 'every evening',
    biography: "Magna farm-to-table crucifix succulents. Flexitarian poke deep v flannel, exercitation humblebrag art party. Dolore franzen scenester blue bottle, +1 aute waistcoat est. Ut small batch hoodie butcher.",
    is_teacher: true
  },
  { email: 'gravyface@sbcglobal.net',
    password: '12345678',
    first_name: 'Martiniana',
    last_name: 'Carreón',
    phone_number: '999 888 7777',
    age: 37,
    gender: 'female',
    location: 'Buenos Aires, Argentina',
    availability: 'mornings',
    biography: "Affogato la croix umami, 90's authentic selvage craft beer lomo lorem mumblecore yr. Cardigan flexitarian post-ironic kinfolk, quinoa master cleanse hell of blog cloud bread voluptate helvetica asymmetrical ut. Twee do vape thundercats seitan ad. Velit iPhone ramps edison bulb you probably haven't heard of them occupy, flannel fam pabst messenger bag anim kitsch direct trade vaporware keffiyeh. Tbh locavore plaid poke. Yr meggings tilde humblebrag, YOLO ut affogato hoodie flexitarian mlkshk fixie jean shorts la croix chia laboris.",
    is_teacher: true
  },
  { email: 'magusnet@mac.com',
    password: '12345678',
    first_name: 'Lucia',
    last_name: 'Udinesi',
    phone_number: '999 888 7777',
    age: 43,
    gender: 'female',
    location: 'Palermo, Italy',
    availability: 'weekends',
    biography: "Hot chicken taiyaki venmo letterpress. Vexillologist aliquip post-ironic four dollar toast quinoa. Disrupt fixie yr, kogi tattooed lomo roof party. Gastropub culpa dolor chia venmo XOXO lorem. Tumblr duis aliquip, pug hashtag glossier letterpress bitters aliqua kitsch ad twee umami.",
    is_teacher: true
  },
  { email: 'rhavyn@outlook.com',
    password: '12345678',
    first_name: 'Minako',
    last_name: 'Takata',
    phone_number: '999 888 7777',
    age: 22,
    gender: 'female',
    location: 'Osaka, Japan',
    availability: 'mornings',
    biography: "I'm baby chia lyft cray pariatur umami sunt dolore street art tote bag schlitz master cleanse yr. Etsy selvage blog tilde ea neutra wolf vexillologist in disrupt aliqua godard meditation vice trust fund. Pour-over kickstarter crucifix schlitz. Magna twee 90's, elit iPhone commodo iceland thundercats roof party blog banh mi typewriter yr nulla.",
    is_teacher: true
  },
  { email: 'ajohnson@icloud.com',
    password: '12345678',
    first_name: 'Świętomierz',
    last_name: 'Kamiński',
    phone_number: '999 888 7777',
    age: 26,
    gender: 'male',
    location: 'Rzeszów, Poland',
    availability: 'mondays and wednesdays',
    biography: "Qui tousled twee consectetur post-ironic fixie man bun bitters thundercats unicorn fanny pack pug in. Sunt quinoa polaroid blog bushwick adipisicing. Nostrud blue bottle commodo hot chicken, dolor veniam tumeric. Commodo chillwave vinyl, lyft kickstarter hella ut four dollar toast la croix dolor dreamcatcher poutine etsy. Bespoke taxidermy ramps nostrud. Id locavore polaroid, irure gluten-free viral helvetica in non commodo narwhal selvage ugh tumblr. Hoodie truffaut tousled letterpress vape craft beer taxidermy.",
    is_teacher: true
  },
]

User.create!(user_seed)

qualification_seed = [
  {title: 'fluent speaker'},
  {title: 'native speaker'},
  {title: 'comedian'},
  {title: 'musician'},
  {title: 'teachers college'},
  {title: 'ESL certified'},
  {title: 'polyglot'},
  {title: 'digital nomad'},
  {title: 'traveller'},
  {title: 'beer'},
  {title: 'coffee'},
  {title: 'tea'},
  {title: 'theatre'},
  {title: 'certified tutor'},
  {title: 'school teacher'},
  {title: 'university professor'},
  {title: 'bicycling'},
  {title: 'paddling'},
  {title: 'foodie'},
  {title: 'TEFL certified'},
  {title: 'TESOL certified'}
]

Qualification.create!(qualification_seed)

all_users = User.where(is_teacher: true)
all_qualifications = Qualification.all


all_users.each do |user|
  rand(3..6).times do
    UserQualification.create(user_id: user.id, qualification_id: all_qualifications.sample.id)
  end
end

language_seed = [
  { name: 'Mandarin', flag: 'temp' },
  { name: 'English', flag: 'temp' },
  { name: 'Spanish', flag: 'temp' },
  { name: 'Arabic', flag: 'temp' },
  { name: 'Bengali', flag: 'temp' },
  { name: 'Hindi', flag: 'temp' },
  { name: 'Russian', flag: 'temp' },
  { name: 'Portuguese', flag: 'temp' },
  { name: 'Japanese', flag: 'temp' },
  { name: 'German', flag: 'temp' },
  { name: 'Japanese', flag: 'temp' },
  { name: 'Korean', flag: 'temp' },
  { name: 'French', flag: 'temp' },
  { name: 'Turkish', flag: 'temp' },
  { name: 'Vietnamese', flag: 'temp' },
  { name: 'Telugu', flag: 'temp' },
  { name: 'Italian', flag: 'temp' },
  { name: 'Polish', flag: 'temp' },
  { name: 'Ukrainian', flag: 'temp' },
  { name: 'Persian', flag: 'temp' },
  { name: 'Thai', flag: 'temp' },
  { name: 'Dutch', flag: 'temp' }
]

Language.create!(language_seed)

all_languages = Language.all

all_users.each do |user|
  rand(1..3).times do
    LanguageSkill.create!(user_id: user.id, language_id: all_languages.sample.id)
  end
end
