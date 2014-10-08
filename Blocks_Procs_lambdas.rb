#!/usr/bin/ruby


# ******* Blocks *******

# the way a block can be passed to a method is by using yield
def block_method
	puts "method thing"
	yield
end

# blocks can be denoted with {} or 'do' 'end'
block_method {puts "block thing"}


# passing values with blocks
def putName(name)
	yield name
end

putName("josh") {|name| puts "My name is #{name}"}

def multi(n)
	yield n
end
multi(3) do |num| puts num * num end

# ******* Procs ********

# you can save Procs to variables because they are objects while blocks are not
multi_of_3 = Proc.new do |n| n % 3 ==0 end

# you can pass Procs to method's yields
# you send procs through methods as a parameter and with a & in front of it
puts (1..30).to_a.select(&multi_of_3)


def greeter
	yield 
end

phrase = Proc.new {puts "hello There!"}

greeter(&phrase)

# you can also call Procs like:
phrase.call


# you can also send symbols as procs to methods
puts [1,2,3].map(&:to_s)


# ************  Lambda *************

lmabdaStuff = lambda {puts "This is my lambda thing"}


