# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "rspotify"
require "json"

puts "After years of waiting..."
Album.destroy_all

RSpotify.authenticate("6a77299e60614eed9caf5b23215ff830", "c258d15f9b2b43bbaae4b6730adea7e6")
artists = RSpotify::Artist.search('Radiohead')

radiohead = artists.first
albums = radiohead.albums
p albums.first.tracks[3].name

# puts "...nothing came..."
# albums.each_with_index do |album, index|
#   # Album.create(title: albums[index].name, year: albums[index].release_date)
#   puts "#{albums[index].name} - #{albums[index].release_date}"
# end

# puts ".and you realized you're looking in the wrong place"
