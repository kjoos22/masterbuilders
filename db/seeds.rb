# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Legoset.create([
    {name: "X-Wing Fighter", number_of_pieces: 761, price: 89.99, age: 9},
    {name: "Pirate Ship", number_of_pieces: 1264, price: 99.99, age: 9},
    {name: "Disney Castle", number_of_pieces: 4080, price: 349.99, age: 16}
])