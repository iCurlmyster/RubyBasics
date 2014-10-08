#!/usr/bin/ruby

# a quick description of classes in ruby

class Person

	# ****** include modules ********
	# you can include any module by saying:
	# include ModuleName
	# this must be declared inside the class
	# also include mixes the module in on the instance level
	# so it will act like instance variables


	# ******** extend modules *********
	# you can extend a module 
	# which pulls the module in like class variables/static variables
	# example:
	# extend ModuleName 

	# this allows you to read this variable without having to make a method to read it
	attr_reader :name
	# this allows you to write to this variable w/out having to make a method for it
	attr_writer :age
	# this makes a getter and setter for random
	attr_accessor :random

	# the $ signifies this variable as a global variable
	$job = "SEaP"

	# the @@ signifies this variable as a class variable, this variable is like a static variable 
	@@location = "Where ever I am right now."
	@@people = 0

	#initialize is the method that gets called when you initialize your object
	def initialize(name, age, random) 

		# the @ signifies that this variable is a instance variable, specific to each object that you make
		@name = name
		@age = age
		@random = random

		@@people += 1
	end

	def description
		puts "My name: #{@name} and my age #{@age}"
	end

	def howMany
		puts "The number of people is #{@@people}"
	end


	# *****  super  ******
	# you can also
	# define public, private, and protected keywords 
	# for methods in class
	# you can call 'super' in your method to make it just do what your superclasses method does
end

josh = Person.new("Joshua",21, "something interesting")

puts "Josh's job is #{$job}"

josh.howMany

josh.description

puts "The random value is #{josh.random}"

josh.random = "nothing now"

puts "The new value of random is: #{josh.random}"

# *********************  inheritance  ************************

class Kids < Person
	$job = "be a kid"

	def initialize(name)
		@name = name
		@@people += 1
	end

end

josh.description

puts "$job is now #{$job}"

thisKid = Kids.new("cameron")
thisKid.description
thisKid.howMany

