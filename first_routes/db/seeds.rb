# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
doggo = User.create!(username: "doggo")
cat = User.create!(username: "cat")
hippo = User.create!(username: "hippo")
elephant = User.create!(username: "elephant")
ape = User.create!(username: "ape")
flamingo = User.create!(username: "flamingo")
goldfish = User.create!(username: "goldfish")
giraffe = User.create!(username: "giraffe")
zebra = User.create!(username: "zebra")
lazy_monkey = User.create!(username: "lazy_monkey")
gordon_gecko = User.create!(username: "gordon_gecko")
parrot = User.create!(username: "parrot")
lion = User.create!(username: "lion")
dolphin = User.create!(username: "dolphin")

Artwork.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('artworks')
bone = Artwork.create!(title: "bone", image_url: "bone.com", artist_id: doggo.id)
jumbled_fish = Artwork.create!(title: "jumbled_fish", image_url: "jumbled_fish.com", artist_id: goldfish.id)
the_great_escapade = Artwork.create!(title: "the_great_escapade", image_url: "the_great_escapade.com", artist_id: hippo.id)
the_great_escapade_copy = Artwork.create!(title: "the_great_escapade", image_url: "the_great_escapade_copy.com", artist_id: lazy_monkey.id)
hunter_vs_pray = Artwork.create!(title: "hunter_vs_pray", image_url: "hunter_vs_pray.com", artist_id: zebra.id)
the_fall = Artwork.create!(title: "the_fall", image_url: "the_fall.com", artist_id: gordon_gecko.id)
the_great_deluge = Artwork.create!(title: "the_great_deluge", image_url: "the_great_deluge.com", artist_id: dolphin.id)

ArtworkShare.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('artwork_shares')
#Cat
ArtworkShare.create!(artwork_id: jumbled_fish.id, viewer_id: cat.id)
ArtworkShare.create!(artwork_id: the_great_escapade.id, viewer_id: cat.id)
ArtworkShare.create!(artwork_id: hunter_vs_pray.id, viewer_id: cat.id)
ArtworkShare.create!(artwork_id: the_great_escapade_copy.id, viewer_id: cat.id)
ArtworkShare.create!(artwork_id: the_great_deluge.id, viewer_id: cat.id)

#Lion
ArtworkShare.create!(artwork_id: jumbled_fish.id, viewer_id: lion.id)
ArtworkShare.create!(artwork_id: the_great_escapade.id, viewer_id: lion.id)
ArtworkShare.create!(artwork_id: hunter_vs_pray.id, viewer_id: lion.id)
ArtworkShare.create!(artwork_id: the_great_escapade_copy.id, viewer_id: lion.id)
ArtworkShare.create!(artwork_id: the_great_deluge.id, viewer_id: lion.id)

#Flamingo
ArtworkShare.create!(artwork_id: jumbled_fish.id, viewer_id: flamingo.id)
ArtworkShare.create!(artwork_id: the_great_escapade.id, viewer_id: flamingo.id)
ArtworkShare.create!(artwork_id: hunter_vs_pray.id, viewer_id: flamingo.id)

#Ape
ArtworkShare.create!(artwork_id: the_fall.id, viewer_id: ape.id)

#Hippo
ArtworkShare.create!(artwork_id: the_great_escapade.id, viewer_id: hippo.id)

