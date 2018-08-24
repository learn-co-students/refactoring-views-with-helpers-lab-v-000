#seed data

artist1 = Artist.create!(name: "Daft Punk")
artist1.songs.create!(title: "The Grid")
Song.create(title: "Policy of Truth")
Song.create(title: "Mambo No. 5")
artist2 = Artist.create!(name: "Daft Punk")
artist2.songs.create!(title: "The Grid")
Song.create(title: "Bohemian Rhapsody")
song = Song.new(title: "Mad World")
song.artist_name = "Tears for Fears"
song.save
Song.create(title: "Around the World", artist_name: "Daft Punk")
Song.create(title: "Bullet the Blue Sky", artist_name: "U2")
