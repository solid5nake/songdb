# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artists = Artist.create([
  { id: 1, name: "Drake"},
  { id: 2, name: "Dr. Dre"},
  { id: 3, name: "Pharell Williams"},
  { id: 4, name: "Jessie Ware"},
  { id: 5, name: "Dillon Francis"},
  { id: 6, name: "Selah Sue"}
])

songs = Song.create([
  { title: "Champagne Kisses", artist_id: 4},
  { title: "Wildest Moments", artist_id: 4},
  { title: "Still D.R.E.", artist_id: 2},
  { title: "The Next Episode", artist_id: 2},
  { title: "Happy", artist_id: 3},
  { title: "Marilyn Monroe", artist_id: 3},
  { title: "One Dance", artist_id: 1},
  { title: "Hotline Bling", artist_id: 1},
  { title: "Alone", artist_id: 6},
  { title: "Coming Over", artist_id: 5},
  { title: "Set Me Free", artist_id: 5},
  { title: "This World", artist_id: 6}
])
