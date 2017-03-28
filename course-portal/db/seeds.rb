# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

course = Course.create({name: "SDET" , duration: "12"})
course = Course.create({name: "WebDev" , duration: "12"})
start_date = Date.new(2001,2,3)
end_date = Date.new(2012,2,3)
group1 = Group.create({name: "WebDev4" , start_date: start_date , end_date: end_date , size: "15" , course: course})

core_syllabus = Syllabus.create({title: "Core", duration: "2 Weeks"})
node_syllabus = Syllabus.create({title: "Node", duration: "1 Week"})
ruby_syllabus = Syllabus.create({title: "Ruby", duration: "1 Week"})

lesson1 = Lesson.create({title:"Time management", syllabus: core_syllabus, notes:"Time management notes"})
lesson2 = Lesson.create({title:"xml", syllabus: core_syllabus, notes:"xml notes"})
lesson3 = Lesson.create({title:"Mac basics", syllabus: core_syllabus, notes:"Introduction to OSX notes"})

lesson4 = Lesson.create({title:"Node Lesson 1", syllabus: node_syllabus, notes:"Node Lesson 1 notes"})
lesson5 = Lesson.create({title:"Node Lesson 2", syllabus: node_syllabus, notes:"Node Lesson 2 notes"})

lesson6 = Lesson.create({title:"Ruby Lesson 1", syllabus: ruby_syllabus, notes:"Ruby Lesson 1 notes"})

group1.lessons.push lesson1
group1.lessons.push lesson2
group1.lessons.push lesson3
