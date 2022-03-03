Actor.destroy_all
Character.destroy_all
Shows.destroy_all

30.times do 
    Actor.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
    )

15.times do
    Character.create(
        name: Faker::FunnyName.name,
        actor_id: rand(1..30)
        show_id: rand
    )

20.times do
    Shows.create(
        name: Faker::Movie.title,
        day: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].sample,
        season: ["Winter", "Spring", "Summer", "Fall"].sample
        genre: Faker::Book.genre
    )

end

# data for shows
    # name, day, season, genre, all strings
