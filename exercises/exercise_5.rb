require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)
puts "Total Annual Revenue for all stores: $#{@total_revenue}"


@average_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue for all stores: $#{@average_revenue}"


@revenue_over_1m = Store.where(annual_revenue: 1000000..).count
puts "#{@revenue_over_1m} are generating $1M or more in annual sales."