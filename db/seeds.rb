10.times do
    billboard = Billboard.create(
        charts: Faker::Music.genre
    )
    10.times do 
    billboard.songs.create(
        title: Faker::Book.title,
        album: Faker::Music.album
    )
    end
end

10.times do
    artist = Artist.create(
        name: Faker::Music.band
    )
    10.times do
    artist.songs.create(
        title: Faker::Book.title,
        album: Faker::Music.album
    )
    end
end


puts "Successfully seeded"