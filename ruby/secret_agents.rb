# create an encrypt password method
# encrypt password method takes a string as a parameter
# include index variable i
# set index variable to 0 in order to loop through string
# create a while loop
# add 1 each time to the index to avoid an infinite loop

def encrypt_password(secret_password)
	i = 0
while i < secret_password.length
	if secret_password[i] == "z"
		secret_password[i] = "a"
	else
		secret_password[i] = secret_password[i].next
	end
	i += 1
end
p secret_password
end

puts encrypt_password("abc")

# create an decrypt password method
# decrypt password method takes a string as a parameter
# include index variable i
# create a while loop
# declare alphabet variable
# find where each letter of the secret password is located in the alphabet
# move each letter back one letter
# add 1 each time to the index to avoid an infinite loop

def decrypt_password(secret_password)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	i = 0
	while i < secret_password.length
		alphabet_index = alphabet.index(secret_password[i])
		secret_password[i] = alphabet[alphabet_index-1]
	i += 1
	end
	p secret_password
end

puts decrypt_password("abc")