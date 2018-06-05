b = Artist.find_or_create_by!(name: "Beyonce")
b.songs.find_or_create_by!(title:"Lemonade")
b.songs.find_or_create_by!(title: "Halo")
b.songs.find_or_create_by!(title: "Love On Top")

t = Artist.find_or_create_by!(name: "Taylor Swift")
t.songs.find_or_create_by!(title: "Red")
t.songs.find_or_create_by!(title: "You Belong with Me")
t.songs.find_or_create_by!(title: "Style")

l = Artist.find_or_create_by!(name: "Odesza")

s = Song.find_or_create_by!(title: "A Moment Apart")
