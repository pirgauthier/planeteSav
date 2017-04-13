# ruby encoding: utf-8

# Create Marques
kimo = Marque.create!(nom: 'Kimo')
siemens = Marque.create!(nom: 'sIeMens')
bk = Marque.create!(nom: 'B&K')

# Create Type_appareils
TypeAppareil.create!(nom: 'Audiomètre')
TypeAppareil.create!(nom: 'Sonomètre')
TypeAppareil.create!(nom: 'Visiotesteur')

# Create Modeles
rand(4..12).times do |m|
  kimo.modeles.create!(nom: Faker::Lorem.word, type_appareil_id: rand(1..3))
end
rand(4..12).times do |m|
  siemens.modeles.create!(nom: Faker::Lorem.word, type_appareil_id: rand(1..3))
end
rand(4..12).times do |m|
  bk.modeles.create!(nom: Faker::Lorem.word, type_appareil_id: rand(1..3))
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


