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
	name: "San Fransisco",
	photo_url: "http://www.sftravel.com/sites/sftraveldev.prod.acquia-sites.com/files/SanFrancisco_0.jpg"
	)
user1 = User.create(
	email: "user3@user.com",
	password: "password",
	profile_picture_url: "https://img.memesuper.com/1a51902ef455a1a917c0e87b6fd05494_hnng-hnngh-meme_560-315.png"
	)
user2 = User.create(
	email: "user1@user.com",
	password: "password",
	profile_picture_url: "https://i.ytimg.com/vi/28B6ncI92js/hqdefault.jpg"
	)
user3 = User.create(
	email: "user2@user.com",
	password: "password",
	profile_picture_url: "http://i3.kym-cdn.com/entries/icons/original/000/019/616/41584.jpg"
	)
admin = User.create(
	email: "admin@amin.com",
	password: "password",
	is_admin?: true
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user1.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user2.id,
	city_id: city1.id
	)
Post.create(
	title: "London",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city2.id
	)
Post.create(
	title: "SF",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city3.id
	)
Post.create(
	title: "ATL",
	content: "Lorem ipsum Cillum aliqua dolor ea dolore eiusmod magna amet culpa proident culpa sit exercitation irure sit irure pariatur aliquip eiusmod proident mollit Excepteur aliquip sunt do ad dolore mollit ex ut do culpa cillum.",
	user_id: user3.id,
	city_id: city1.id
	)

City.find_each(&:save)