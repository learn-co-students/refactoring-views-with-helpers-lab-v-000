artist = Artist.new(name: "Public Access TV")
artist.songs.build(title: "Evil Disco")
artist.songs.build(title: "End of an Era")
artist.save

Song.create(title: "Mystery of Love")
Song.create(title: "The less I know the better")
