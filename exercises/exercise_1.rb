require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Store < ActiveRecord::Base
end

burnaby = Store.create name: 'Burnaby',annual_revenue: 3000000, mens_apparel: true, womens_apparel: true
richmond = Store.create name: 'Richmond',annual_revenue: 126000, mens_apparel: false, womens_apparel: true
gastown = Store.create name: 'Gastown',annual_revenue: 198000, mens_apparel: true, womens_apparel: false
puts Store.count
