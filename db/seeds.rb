# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Remove anything that's already there
House.delete_all
Student.delete_all
Spell.delete_all

h1 = House.create(name: "Gryffindor")
h2 = House.create(name: "Slytherin")
h3 = House.create(name: "Ravenclaw")
h4 = House.create(name: "Hufflepuff")

s1 = Student.create(name: "Harry Potter", password: '1234')
s2 = Student.create(name: "Ron Weasley", password: '1234')
s3 = Student.create(name: "Hermione Granger", password: '1234')

s4 = Student.create(name: "Draco Malfoy", password: '1234')
s5 = Student.create(name: "Vincent Crabbe", password: '1234')
s6 = Student.create(name: "Gregory Goyle", password: '1234')

s7 = Student.create(name: "Luna Lovegood", password: '1234')
s8 = Student.create(name: "Cho Chang", password: '1234')
s9 = Student.create(name: "Padma Patil", password: '1234')

s10 = Student.create(name: "Cedric Diggory", password: '1234')
s11 = Student.create(name: "Zacharias Smith", password: '1234')
s12 = Student.create(name: "Justin Finch-Fletchley", password: '1234')

h1.students = [s1, s2, s3]
h2.students = [s4, s5, s6]
h3.students = [s7, s8, s9]
h4.students = [s10, s11, s12]

sp1 = Spell.create(name: "Accio")
sp2 = Spell.create(name: "Alohomora")
sp3 = Spell.create(name: "Wingardium Leviosa")
sp4 = Spell.create(name: "Avada Kedavra")
sp5 = Spell.create(name: "Reparo")
sp6 = Spell.create(name: "Crucio")
sp7 = Spell.create(name: "Riddikulus")
sp8 = Spell.create(name: "Expulso")
sp9 = Spell.create(name: "Expecto Patronum")

Student.all.each do |student|
  student.spells << sp1 << sp3
end

s1.spells << sp9
s4.spells << sp4 << sp6

puts "All done"