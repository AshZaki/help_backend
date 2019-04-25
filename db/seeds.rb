# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ash = User.find_or_create_by(username: "ash", password:"00", first_name: "Ashley", last_name: "Zaki")
JC = User.find_or_create_by(username: "jc", password:"11", first_name: "JC", last_name: "Chang")
Robin = User.find_or_create_by(username: "robin", password:"22", first_name: "Robin", last_name: "Kim")
Vlad = User.find_or_create_by(username: "vladdydaddy", password:"33", first_name: "Vlad", last_name: "Deryuzhenko")
Anuj = User.find_or_create_by(username: "papanuj", password:"44", first_name: "Anuj", last_name: "Sharma")