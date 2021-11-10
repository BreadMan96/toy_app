# Create a main sample user.
User.create!(name: "Vladislav Botodin",
			email: "vlad962706@mail.ru",
			password: "adminsitebreadman", 
			password_confirmation: "adminsitebreadman",
			admin: true)

# Generate a bunch of additional users.
99.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@breadman.com"
	password = "password"
	User.create!(name: name,
				email: email,
				password: password,
				password_confirmation: password)
end