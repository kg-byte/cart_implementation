# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.destroy_all
Artist.destroy_all

talking_heads = Artist.create!(name: "Talking Heads")
journey = Artist.create!(name: "Journey")
zac_brown = Artist.create!(name: "Zach Brown Band")

talking_heads.songs.create!(title: "This Must be the Place", length: 345, play_count: 23)
talking_heads.songs.create!(title: "Heaven", length: 432, play_count: 12)
journey.songs.create!(title: "Don't Stop Believin'", length: 367, play_count: 45)
zac_brown.songs.create!(title: "Chicken Fried", length: 183, play_count: 49)
