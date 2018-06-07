kim = User.create(name: "Kim", title: "Volunteer", email: "kim@kim.com", password: "kimk", password_confirmation: "kimk")
natalie = User.create(name: "Natalie", title: "Case Worker", email: "natalie@natalie.com", password: "natalien", password_confirmation: "natalien")

janet = Beneficiary.create(name: "Janet", gender: "F", id_number: 5123456)
bill = Beneficiary.create(name: "Bill", gender: "M", id_number: 5987654)

kim.beneficiaries << janet
natalie.beneficiaries << bill

one = Update.create(user_id: 1, beneficiary_id: 1, notes: "Received id card" )
two = Update.create(user_id: 2, beneficiary_id: 2, notes: "Made complaint about employer")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
