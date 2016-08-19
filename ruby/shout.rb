# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!!!" + " Hehe."
#   end
# end

# puts Shout.yell_angrily("Nooooo")
# puts Shout.yelling_happily("Ahhhhh")

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
end

class Bear
	include Shout
end

class Pirate
	include Shout
end

smokey = Bear.new
smokey.yell_angrily("FIRE")

jack = Pirate.new
jack.yelling_happily("WHERE'S MY BEER")