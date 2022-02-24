# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

month = Month.create(name: 'February')

habit = Habit.create(month_id: 1, completed: true, date: DateTime.now, description: 'Drink a gallon of water per day')