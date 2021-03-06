  # Create a main sample user.
User.create!(name: "Vladislav Borodin",
			email: "vlad962706@mail.ru",
			password: "adminsitebreadman", 
			password_confirmation: "adminsitebreadman",
			admin: true,
			activated: true,
			activated_at: Time.zone.now)

# Generate a bunch of additional users.
99.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@breadman.com"
	password = "password"
	User.create!(name: name,
				email: email,
				password: password,
				password_confirmation: password,
				activated: true,
				activated_at: Time.zone.now)
end

# Generate microposts for a subset of users.
users = User.order(:name).take(6)
50.times do
	content = Faker::Lorem.sentence(word_count: 5)
	users.each { |user| user.microposts.create!(content: content) }
end

# Create following relationships.
users = User.all
user = users.first
following = users[0..2]
followers = users[50..70]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }