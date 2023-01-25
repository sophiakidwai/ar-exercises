require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(
  first_name: "Khurram", 
  last_name: "Virani",
  hourly_rate: 60
)
@store1.employees.create(
  first_name: "Peter", 
  last_name: "Pan",
  hourly_rate: 25
)
@store1.employees.create(
  first_name: "Tinker", 
  last_name: "Bell",
  hourly_rate: 190
)
@store1.employees.create(
  first_name: "Simba", 
  last_name: "Lion",
  hourly_rate: 88
)
@store2.employees.create(
  first_name: "Princess", 
  last_name: "Jasmine",
  hourly_rate: 199
)
@store2.employees.create(
  first_name: "Mickey", 
  last_name: "Mouse",
  hourly_rate: 100
)
@store2.employees.create(
  first_name: "Buzz", 
  last_name: "Lightyear",
  hourly_rate: 99
)

puts Employee.count
