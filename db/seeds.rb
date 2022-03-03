Actor.destroy_all
Character.destroy_all
Show.destroy_all

30.times { 
    Actor.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
    )
}

20.times {
    Show.create(
        name: Faker::Movie.title,
        day: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].sample,
        season: ["Winter", "Spring", "Summer", "Fall"].sample,
        genre: Faker::Book.genre
    )
}

15.times {
    Character.create(
        name: Faker::FunnyName.name,
        actor_id: Actor.all.map {|a| a.id}.sample,
        show_id: Show.all.map {|s| s.id}.sample,
        catchphrase: Faker::ChuckNorris.fact
    )
}

