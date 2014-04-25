# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create( full_name: 'Bethany Rentz',
            age: 21,
            bio: 'Developer by day.',
            profession: 'Teacher'    )

Course.create(title: 'Ruby on Rails')