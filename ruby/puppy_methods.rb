class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	int.times do |word| 
  	puts "Woof! "
  	end
  end

  def roll_over(string)
  	puts string
  end

  def dog_years(int)
  	puts int * 7
  end

  def tail_wag(int)
  	puts "I wagged my tail #{int} times today!"
  end

  def initialize
  	puts "Initializing new puppy instance ..."
  end

end

lab = Puppy.new

lab.fetch("ball")
lab.speak(4)
lab.roll_over("*rolls over*")
lab.dog_years(1)
lab.tail_wag(50)

class Fruits

	def skin_color(int)
		puts "I changed my skin color #{int} times before I was picked!!!"
	end

	def initialize
  	puts "Initializing new fruits instance ..."
  	end

	def food(string)
		puts "I am turned into a #{string}!"
	end	

end

blueberry = Fruits.new

blueberry.skin_color(3)
blueberry.food("pancakes")

empty_array = []

i = 0

until i == 50
  blueberry = Fruits.new
  empty_array << blueberry
  i += 1
end

p empty_array

empty_array.each do |item|
  blueberry.skin_color(3)
  blueberry.food("pancakes")
end