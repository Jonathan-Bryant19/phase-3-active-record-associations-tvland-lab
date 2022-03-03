30.times do 
    Actor.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
    )

10.times do
    Character.create(
        name: Faker::FunnyName.name,
        
    )


end

# data for characters
    # name (string), actor_id (integer), show_id (integer)

# data for shows
    # name, day, season, genre, all strings
