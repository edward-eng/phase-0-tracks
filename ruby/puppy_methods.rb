# New Stuff

# class Puppy

#   def initialize
#     puts "Initializing new puppy instance ..."
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(integer)
#     puts "Woof! " * integer
#   end

#   def roll_over
#     puts "*rolls over*"
#   end

#   def dog_years(human_years)
#     human_years * 7
#   end

#   def sleep(hours)
#     puts "I slept for #{hours} hours!"
#   end

# end

# chihuahua = Puppy.new
# chihuahua.fetch('ball')
# chihuahua.speak(5)
# chihuahua.roll_over
# chihuahua.dog_years(4)
# chihuahua.sleep(15)


class Fish
    
  def initialize
    puts "Initializing new fish instance...."
  end

  def swim(laps)
    puts "I swim #{laps} laps a day."
  end

  def eat(food)
    puts "My favorite food is #{food}."
  end
end

fish_array = []
p fish_array

counter = 0

# Created just 2 instances for testing purposes.
until counter == 2
  new_name = Fish.new
  fish_array << new_name
  counter += 1
end

p fish_array

fish_array.each do |name|
  new_name.swim(5)
  new_name.eat('shrimp')
end

#Driver Code:
# nemo = Fish.new
# nemo.swim(8)
# nemo.eat('anchovies')

# ========================================

# Old Stuff

# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(int)
#   	int.times do |word| 
#   	puts "Woof! "
#   	end
#   end

#   def roll_over(string)
#   	puts string
#   end

#   def dog_years(int)
#   	puts int * 7
#   end

#   def tail_wag(int)
#   	puts "I wagged my tail #{int} times today!"
#   end

#   def initialize
#   	puts "Initializing new puppy instance ..."
#   end

# end

# lab = Puppy.new

# lab.fetch("ball")
# lab.speak(4)
# lab.roll_over("*rolls over*")
# lab.dog_years(1)
# lab.tail_wag(50)

# class Fruits

# 	def skin_color(int)
# 		puts "I changed my skin color #{int} times before I was picked!!!"
# 	end

# 	def initialize
#   	puts "Initializing new fruits instance ..."
#   	end

# 	def food(string)
# 		puts "I am turned into a #{string}!"
# 	end	

# end

# blueberry = Fruits.new

# blueberry.skin_color(3)
# blueberry.food("pancakes")

# empty_array = []

# i = 0

# until i == 50
#   blueberry = Fruits.new
#   empty_array << blueberry
#   i += 1
# end

# p empty_array

# empty_array.each do |item|
#   blueberry.skin_color(3)
#   blueberry.food("pancakes")
# end