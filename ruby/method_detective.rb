# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

puts "iNvEsTiGaTiOn".replace "InVeStIgAtIoN"
# => “InVeStIgAtIoN”

puts "zom".replace "zoom"
# => “zoom”

puts "enhance".center(15)
# => "    enhance    "

puts "enhance".rjust(11).ljust(15)
# => "    enhance    "

puts "enhance".replace "    enhance    "
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "Stop! You're under arrest!".replace "STOP! YOU'RE UNDER ARREST!"
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".insert(9, ' suspects')
# => "the usual suspects"

puts "the usual".insert(-1, ' suspects')
# => "the usual suspects"

puts "the usual".replace "the usual suspects"
# => "the usual suspects"

puts " suspects".insert(0, 'the usual')
# => "the usual suspects"

puts " suspects".insert(-10, 'the usual')
# => "the usual suspects"

puts " suspects".replace "the usual suspects"
# => "the usual suspects"

puts "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

puts "The case of the disappearing last letter".replace "The case of the disappearing last lette"
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".delete "T"
# => "he mystery of the missing first letter"

puts "The mystery of the missing first letter".replace "he mystery of the missing first letter"
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

puts "Elementary,    my   dear        Watson!".split.join(" ")
# => "Elementary, my dear Watson!"

puts "Elementary,    my   dear        Watson!".replace "Elementary, my dear Watson!"
# => "Elementary, my dear Watson!"

puts "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the ASCII (American Standard Code for Information Interchange) Code for the character z.

puts "How many times does the letter 'a' appear in this string?".count("a")
# => 4