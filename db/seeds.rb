# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puppy = Puppy.new(name: "cat", age: 5, breed: "german shepherd")
puppy = Puppy.new(name: "lady", age: 4, breed: "mutt")
puppy.save

