10.times do
    Billboard.create(
        charts: Faker::Music.genre
    )
end

20.times do
    Artist.create(
        name: Faker::Music.band
    )
end

Artist.all.each do
    title = Faker::Book.title,
    album = Faker::Music.album,
    billboard_id = rand(10) + 1
    artist_id = rand(20) + 1
    Song.create(
        title: title,
        album: album,
        billboard_id: billboard_id,
        artist_id: artist_id
        )
end

puts "Successfully seeded"