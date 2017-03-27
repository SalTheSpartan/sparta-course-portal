# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

course = Course.create({name: "SDET" , duration: "12"})
start_date = Date.new(2001,2,3)
end_date = Date.new(2012,2,3)
group1 = Group.create({name: "WebDev4" , start_date: start_date , end_date: end_date , size: 15 , course: course})
