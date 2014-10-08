#!/usr/bin/ruby

# a quick description of modules 

	# modules are just namespaces 
	# they are great for holding a bunch of functions
	# without carrying the weight of being a class

# if you need to require a module then you type:
# require 'ModuleName'

# you can include modules methods and constants in classes like:
# include ModuleName
# this must be included inside the class itself

module Thing

	# constants should be uppercase
	PI = 3.14

	# you must define methods like: ModuleName.methodName
	def Thing.thingDoes
		puts "This is what thing module thingDoes does!"
	end
end

module ThingTwo
	def ThingTwo.thingDoes
		puts "this is what thingTwo module thingDoes does!"
	end
end

# you access methods and constants within a module with the scope resolution operator
Thing::thingDoes

ThingTwo::thingDoes