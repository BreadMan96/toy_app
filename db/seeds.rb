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