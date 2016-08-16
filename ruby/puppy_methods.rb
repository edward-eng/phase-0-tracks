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

end

lab = Puppy.new

lab.fetch("ball")
lab.speak(4)
lab.roll_over("*rolls over*")
lab.dog_years(1)
lab.tail_wag(50)