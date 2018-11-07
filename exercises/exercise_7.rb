require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"
puts "please enter store name"

# class Employee < ActiveRecord::Base
#   validates :first_name, presence: true
#   validates :last_name, presence: true
store_name = gets.chomp
create_store = Store.create(name: store_name)

if create_store.save
  puts "Success!"
else
  create_store.errors.messages.each {|key, value| puts "#{key.to_s} #{value[0]}"}
end
