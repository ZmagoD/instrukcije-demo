# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.destroy_all
User.destroy_all
Instruction.destroy_all
Instructor.destroy_all
AdminUser.create!(email: 'admin@asdf.com', password: 'asdf1234', password_confirmation: 'asdf1234')
User.create!(email: 'student@asdf.com', password: 'asdf1234', password_confirmation: 'asdf1234' )
Instructor.create!(email: 'instruktor@asdf.com', password: 'asdf1234', password_confirmation: 'asdf1234' )

10.times do |i|
  Instruction.create!(termin: '2016-01-01 06:00', predmet: "Predmet #{i}", cena: 10, instructor: Instructor.first )
end