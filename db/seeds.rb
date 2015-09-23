# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create administrator user
User.create first_name: "Alejandro", last_name: "Pablos", phone: "291-123123", sex: :male, email: "alepablos@gmail.com", password: "root", profile: :admin

# Work Items
WorkItem.create name: 'Corte', duration: 30, price: 50.25
WorkItem.create name: 'Pelusa', duration: 20, price: 70.50
