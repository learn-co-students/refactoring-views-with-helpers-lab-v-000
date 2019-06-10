# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: "Hanson")
Artist.create(name: "Backstreet Boys")
Song.create(title: "MMMBop", artist_id: 3)
Song.create(title: "Siren Call", artist_id: 3)
Song.create(title: "I Want it That Way", artist_id: 4)
Song.create(title: "Incomplete", artist_id: 4)
