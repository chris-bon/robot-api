100.times do
  Robot.create(name: Faker::Name.name,
         profession: Faker::Company.profession,
              image: Faker::Avatar.image)
end