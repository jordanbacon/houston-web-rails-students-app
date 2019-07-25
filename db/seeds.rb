# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i1 = Instructor.create(name: 'Ms. Frizzle')
i2 = Instructor.create(name: 'Mr. Feeny')

Student.create(name: 'Alpha', major: 'astrophysics', age: 20, instructor_id: i1.id)
Student.create(name: 'Beta', major: 'biology', age: 22, instructor_id: i1.id)
Student.create(name: 'Charlie', major: 'chemistry', age: 19, instructor_id: i1.id)
Student.create(name: 'Delta', major: 'design', age: 21, instructor_id: i2.id)
Student.create(name: 'Echo', major: 'economics', age: 23, instructor_id: i2.id)