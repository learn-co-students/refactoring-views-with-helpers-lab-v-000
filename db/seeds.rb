# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
beyonce = Artist.new(:name => "Beyonce")
drunk_in_love = Song.new(:title => "Drunk in Love")

drunk_in_love.artist = beyonce
