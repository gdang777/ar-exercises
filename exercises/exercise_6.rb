require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Joel", last_name: "Shinness", hourly_rate: 50)
@store1.employees.create(first_name: "Don", last_name: "Burks", hourly_rate: 50)

@store2.employees.create(first_name: "Gaurav", last_name: "Dang", hourly_rate: 90)
@store2.employees.create(first_name: "Monica", last_name: "Lee", hourly_rate: 80)
@store2.employees.create(first_name: "Angela", last_name: "Larryant", hourly_rate: 70)
