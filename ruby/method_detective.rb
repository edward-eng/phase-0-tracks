# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
=> “InVeStIgAtIoN”

"iNvEsTiGaTiOn".replace "InVeStIgAtIoN"
=> “InVeStIgAtIoN”

"zom".replace "zoom"
=> “zoom”

"enhance".center(15)
=> "    enhance    "

"enhance".rjust(11).ljust(15)
=> "    enhance    "

"enhance".replace
=> "    enhance    "

"Stop! You’re under arrest!".upcase
=> "STOP! YOU’RE UNDER ARREST!"

"Stop! You're under arrest!".replace "STOP! YOU'RE UNDER ARREST!"
=> "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(9, ' suspects')
=> "the usual suspects"

"the usual".insert(-1, ' suspects')
=> "the usual suspects"

"the usual".replace "the usual suspects"
=> "the usual suspects"

" suspects".insert(0, 'the usual')
=> "the usual suspects"

" suspects".insert(-10, 'the usual')
=> "the usual suspects"

" suspects".replace "the usual suspects"
=> "the usual suspects"

"The case of the disappearing last letter".chop
=> "The case of the disappearing last lette"

"The case of the disappearing last letter".replace "The case of the disappearing last lette"
=> "The case of the disappearing last lette"

"The mystery of the missing first letter".delete "T"
=> "he mystery of the missing first letter"

"The mystery of the missing first letter".replace "he mystery of the missing first letter"
=> "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
=> "Elementary, my dear Watson!"

"Elementary,    my   dear        Watson!".split.join(" ")
=> "Elementary, my dear Watson!"

"Elementary,    my   dear        Watson!".replace
=> "Elementary, my dear Watson!"

"z".ord
=> 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the ASCII (American Standard Code for Information Interchange) Code for the character z.

"How many times does the letter 'a' appear in this string?".count("a")
=> 4