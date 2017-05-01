# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
User.destroy_all
Post.destroy_all
Comment.destroy_all
PlanItem.destroy_all

city1 = City.create(
	name: "Atlanta",
	photo_url: "http://www.dentons.com/~/media/Images/Website/Background%20Images/Offices/Atlanta/Atlanta_2.jpg"
	)
city2 = City.create(
	name: "London",
	photo_url: "https://media.timeout.com/images/100644443/image.jpg"
	)
city3 = City.create(
	name: "San Francisco",
	photo_url: "http://www.sftravel.com/sites/sftraveldev.prod.acquia-sites.com/files/SanFrancisco_0.jpg"
	)
user1 = User.create(
	email: "liamtrobinson@gmail.com",
	password: "password",
	)
user2 = User.create(
	email: "randyagaleano@gmail.com",
	password: "password",
	)
user3 = User.create(
	email: "deviea8@gmail.com",
	password: "password",
	profile_picture_url: "http://i3.kym-cdn.com/entries/icons/original/000/019/616/41584.jpg"
	)
admin = User.create(
	email: "deedavis@admin.com",
	password: "password",
	is_admin?: true
	)
Post.create(
	title: "Great Burgers At H&F",
	content: "Man, they have some really kick a** burgers over at Ponce City Market.  Get there early though, they only make so many!",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "Secret Dance Club",
	content: "There is a solid underground dance club at the corner of Huffer and Fifth near downtown.  They mostly play deep house, so if you are a fan I highly recommend checking it out.  The password for the door is 'Bad Tooth'.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "Great Place to Bird Watch",
	content: "Off of Lorrington near the three ponds, there is some great bird watching to be had.  It truly is a joy!",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "Good Bird Watching",
	content: "It is a little out of the way, but right before Buckhead becomes Sandy Springs on Roswell Road there are appartments just across from a Pike nursery with beautiful foliage that attract some spectacular birds.",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "Beatiful Cobblestone Roads",
	content: "North of Fervis on Main Street, each cobblestone has its own unique inscription that travellers have left behind.  I couldn't find any blank ones to write on, but maybe you can!",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "Tasty Shawarma",
	content: "Some of the tastiest shawarma I've ever had is in this little hole in the wall called Ollie's Outpost.  Doesn't sound like much, but it tastes great!",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "Avoid The Highways for At Least Three Months!",
	content: "This city is great and diverse and I don't want to dissuade anyone from coming, but avoid the highways for now.  They are just falling apart and burning down!",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "Pop Up Shoe Store",
	content: "Every Tuesday from 11am to 1pm there is discount shoe pop up at 585 Berkeley Trace.",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "Copmmunity Theatre",
	content: "The theatre troupe that performs at True Ba Doors is talented and something to behold.",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "Star Bar",
	content: "Star Bar in Little 5 Points has an open mic night on Mondays that a lot of famous comedians will attend to try out new material.",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "Banksy Piece",
	content: "There is a really cool Banksy piece in the alley behind Murph's Market.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "Tacos, Tacos, Tacos",
	content: "They make some solid tacos with creative twists over Te's Ta Co.",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "Shaky Knees",
	content: "If you can get down here in May, there is a cool little indy festival called Shaky Knees.  Probably won't be cool for too many years to come, so get out soon!",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "Shepherd's Pie",
	content: "Authentic shepherd's pie can be found at Trina's Pie In The Sky.",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "Best Smoothies",
	content: "The best smoothie I have ever had was the Mama Jamma from Groops Moops Fruits and Loots.  Check it out.",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "Video Game Bar",
	content: "Great nerd bar called Joy Stick here.  Usually pretty packed but tasty drinks, good people, and cool games.",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "Don't Make Fun Of Teeth",
	content: "British people do not appreciate foreigners mocking their poor dental hygiene.  Just a heads up.",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "Exotic Petting Zoo",
	content: "I'm not sure if it's entirely legal, but there is a sweet petting zoo with a bunch of possibly dangerous exotic animals.  Once in a lifetime, bring heavy duty gloves.",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "Belt Line Biking",
	content: "Bring your bike or rent one and take a ride down the belt line while you are here.  It is super fun with great scenes and people.",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "Cheap Segway Rental",
	content: "Looked everywhere for the cheapest I could find and it is at Stews Segways.  Hope that helps fellow Segway enthusiasts.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "Road Luge",
	content: "Every weekend there is a Road Luge meetup that meets at the top of the Grant Road SE hill.",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "Dead Body Under A Bridge",
	content: "It is probably 20 years old or so, but there is an undiscovered dead body under the 285 bridge over Lake Forest.",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "Secret Menu Item At Jack's",
	content: "If you order the Boomshakalaka at Jack's in Covington, you will get a pretty sweet surprise.",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "Secret Beach",
	content: "There is a very secret beach, so secret I don't feel comfortable sharing it here.  If you email me, I can give you the details!",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "Nice Nap Spot",
	content: "Bring a comfy chair to the large oak tree in Piedmont Park and enjoy a great outdoor nap.",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "Casino",
	content: "Underground and somehow legal casino under May's Motherboards.  Small stakes and really fun.",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "Boss Hot Dogs",
	content: "Get some great hot dogs from the cart on Santa Clara Avenue.  Not sure if it moves around a lot or what, so hurry!",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "Best Beer Selection",
	content: "Just go in and ask the bartender at Lil' Ronnie's for the type of beer you want and he will give you the best available option.",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "Neat Buildings",
	content: "Very quirky buildings just outside London in the small town of Berklindinshire.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "Sweet Potatoes",
	content: "Not sweet, but really awesome and tasty regular potatoes served up fresh at the food truck called Greg's Good Toes.  Try and track it down while your in town.",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "A Disaster Worth Watching",
	content: "At Ray's NY Pizza in Sandy Springs, the whole staff argues and bickers with each other out in the open.  Everyone has their emotions on their sleeve and it's like getting dinner and a show.  Food ain't that great though.",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "Feels Like Family",
	content: "The improv group at Jimminy Frick's plays off each other so well it feels like you are watching a family that has been performing together their whole lives.",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "Good Surf Boards",
	content: "You can find some great hand made surf boards at the tent at the south end of Burk Bry Beach.",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "I Love This City",
	content: "Atlanta has such a great diversity of cultures, people, food, experiences and so much more.  It doesn't feel like any other city.",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "Thames River Health",
	content: "I had fantastic spa experience here.",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "Antiques",
	content: "Cheap antiques in this little undiscovered hole in the wall called Nancy's Shelves.  They have more than shelves.",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "Drive 285",
	content: "I did a full lap around 285 and if you enjoy driving, listening to tunes, and seeing roadside culture I highly recommend it.",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "Hash Browns",
	content: "Everything at Chauncey's is terrible except the hash browns.  They are the best.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "CD Shop",
	content: "If you enjoy shopping for used CDs, I'd recommend taking a trip to Yikes! Music.",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "Old Houses",
	content: "Beautiful old houses off Boulevard near the highway.",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "Architecture",
	content: "If you love some nice architecture you need to make it out here, nowhere in particular in the city just the whole place itself.",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "Cliff Diving",
	content: "I went cliff diving in Santa Ana.  No previous experience but had a blast.",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "The Varsity Sucks",
	content: "I'm sure everyone has heard about The Varsity, it is not worth the hype.  Don't bother.",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "Running Route",
	content: "Every morning a group goes on an awesome run through the city.  The meetup place always changes but you can find out via some British forums.",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "Trolley",
	content: "Took a ride on the trolley, it was super neat",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "Sports Bar",
	content: "Best sports bar in the city is easily SPORTS!",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "Car Show",
	content: "Once per month they have an antique car show in Flipertine.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "Bricks",
	content: "I love seeing good brick work and you can go down to 5476 North Frank Drive to see some really special stuff.",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "Bricks",
	content: "I love seeing good brick work and you can go down to 5476 North Frank Drive to see some really special stuff.",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "Bricks",
	content: "I love seeing good brick work and you can go down to 5476 North Frank Drive to see some really special stuff.",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "Driving Track",
	content: "There is an old abandoned race track where you can take your car and do whatever you like.  Just be careful.",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "Sweet Tag",
	content: "There is an awesome tag under the Krog Street bridge.",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "Flank Steak",
	content: "Good old flank steak at Jerry's.  Pretty good people at the bar with good conversation.  Bring up the local high school football team.",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "Good Fishing",
	content: "Found a good fishing spot at Border Beach. Head out near the southeast bouy.",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "Old Water Tower",
	content: "Cool scenes at the old water tower to the south.",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "Old Water Tower",
	content: "Cool scenes at the old water tower to the south.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "Old Water Tower",
	content: "Cool scenes at the old water tower to the south.",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "Great Kite Flying",
	content: "Big open field east of North Market, great winds for putting a kite up in the air.",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "Great Kite Flying",
	content: "Big open field east of North Market, great winds for putting a kite up in the air.",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "Great Kite Flying",
	content: "Big open field east of North Market, great winds for putting a kite up in the air.",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "Dog Park",
	content: "Take your dog out to the dog park on boulevard on a Thursday for some free dog treats and on tuesday there is a cool trainer with free short sessions.",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "Butterflies",
	content: "Weatherly Park has a small patch of flowers to the south that attracts some rare butterfly species native to the region.  Take some pictures while your there!",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "Butterflies",
	content: "Weatherly Park has a small patch of flowers to the south that attracts some rare butterfly species native to the region.  Take some pictures while your there!",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "Butterflies",
	content: "Weatherly Park has a small patch of flowers to the south that attracts some rare butterfly species native to the region.  Take some pictures while your there!",
	user_id: user1.id,
	city_id: city1.id
	)

City.find_each(&:save)