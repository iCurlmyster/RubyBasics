#!/usr/bin/ruby

firstArray = Array.new(3){|index|index ** 2}
puts "first array #{firstArray}"

# or you can do Array.[](stuff to put inside) to create a new array

secondArray = Array.[]("stuff",42,true)
puts "second array #{secondArray}"

# keep_if delete_if {}

secondArray.delete_if {|i|i==42}
puts "#{secondArray} after delete_if \n"
puts "keep_if does the exact opposite, it only keeps whats in the lambda\n"

# array * number = array repeated that number of time in new array.... array * string = new string(kind of shortcut for join)
doubledArray = firstArray * 2
puts "#{doubledArray}\n"

stringFromArray = secondArray * " "
puts stringFromArray

# + and - for arrays, + merges two arrays - subtracts the current array with the right side array of all acounts of what it has inside

puts firstArray + secondArray
subArray = secondArray - secondArray
print "#{subArray.empty?} boolean for empty array actual array #{subArray}\n"

# << puts things in arrays as well at end

secondArray << 42
puts "now the secondArray has these values #{secondArray}"

# assoc() method looks through arrays of arrays to find a match of whatever is passed
# rassoc() searches for the last item in array of arrays
arrIarr = [[2,"something"],[4,6,1],[true,"Joshua","dog"],"foo"]
puts "#{arrIarr.assoc(2)} is in an array in an array"
puts "#{arrIarr.assoc("foo")} is an item in an array put it's not an item in an array in an array so it returns nil\n"
# .clear clears an array
# .compact removes all nils out of array and if there is no nils it will return nil because the action can't be done
puts "#{secondArray.delete(42)} was deleted in the array secondArray and now has the value #{secondArray}"
# you can also delete_at(index) 
# delete_if {} maps through an array and deletes item if condition is met
# there is also .fill(itemToFill,optional index placement) you can also map with fill like .fill {condition} 
# .index will return the index of the item you pass it unless it doesn't exist then it returns 0
puts "#{secondArray.first} is the first item in secondArray it was returned by .first"
# you also have .last
#.flatten flattens an array of arrays to just one simple array
puts "#{arrIarr} now apply flatten #{arrIarr.flatten}"
# .pack is crazy look it and list of things you can pass to it
# .keep_if {condition} 
# .insert(index,argument) 
