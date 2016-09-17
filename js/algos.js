// PSEUDOCODE - RELEASE 0
// Write a function that takes an array of words or phrases as an argument.
// Declare a longest_string variable that starts out equal to an empty string.
// Iterate through the array.
// If the length of the current element is longer than the length of the string in the longest_string variable, set the value of the variable to the current element.
// Return the value of the longest_string variable.

function longestString(array) {
	var longest_string = '';
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > longest_string.length) {
			longest_string = array[i];
		}
	}
	return longest_string;
}

var result = longestString(["long phrase","longest phrase","longer phrase"]);
console.log(result);

// PSEUDOCODE - RELEASE 1
// Write a function that takes two objects as an argument.
// Iterate through the first object to see if any of its keys match any of the keys of the second object.
// If a key matches, check to see if the values of that key match. If they do, return true.
// Otherwise, return false.










// // ========================================
// // OLD WORK

// // Pseudocode (longest_string function)
// // Add a longest_string function.
// // The function takes in an array (of words or phrases) as a parameter.
// // Then the function iterates through the array to see how long each string is.
// // Then function should return the longest string in the array.

// function longest_string(array){
// 	var longest_string_found = ""
// 	for (var i = 0; i < array.length; i++){
// 		// If the length of the current element in the array is longer than the length of the longest_string_found variable:
// 		// Store the current element in the longest_string_found variable.
// 		// Then return the longest_string_found.
// 		if (array[i].length > longest_string_found.length){
// 			longest_string_found = array[i]
// 		}
// 	}
// 	return longest_string_found
// }

// var result = longest_string(['cat', 'dinosaur', 'mouse']);
// console.log(result)

// // Pseudocode (key_value_match function)
// // Add key_value_match function.
// // The function takes in two objects.
// // The function iterates through each object to look at the keys and values.
// // If the keys or the values of both objects match:
// // The function should return <true>.
// // Otherwise (else), the function should return <false>.

// function key_value_match(object1, object2){
// 	var match = false;
// 	for (var info1 in object1){
// 			console.log(info1 + ": " + object1[info1]);
// 	}
// 	for (var info2 in object2){
// 			console.log(info2 + ": " + object2[info2]);
// 	}

// 	for (var info1 in object1){
// 		if (object2.hasOwnProperty(info1)){
// 			if (object1[info1] == object2[info1]){
// 				return match = true;
// 			}
// 			else if (object1[info2] == object2[info2]){
// 				return match = true;
// 			}
// 			else {
// 				return match = false;
// 			}
// 		}
// 		else {
// 			return match = false;
// 		}
// 	}
// }

// // Driver Code
// var match_result = key_value_match({name: "Steven", age: 54}, {name: "Tamir", age: 54})
// console.log(match_result)

// var match_result = key_value_match({name: "Steven", age: 54}, {name: "Tamir", age: 14})
// console.log(match_result)

// // Pseudocode (random_test_data function)
// // Add random_test_data function.
// // The function should take an integer to determine the length an of array.
// // Then the function should build an array.
// // Then the function should populate the array with random strings until the number of strings equals the integer given.
// // The random strings should contain at least 1 letter but not more than 10.

// function random_test_data(array_length){
// 	empty_array = []
// 	for (var i = 0; i < array_length; i++){
// 		empty_array.push(build_random_word());
// 	}
// 	return(empty_array);
// }

// random_test_data(3)
// console.log(random_test_data(3))

// // Pseudocode (random_word_length function)
// // Pick a random number from 1 through 10.

// function random_word_length() {
// 	var random_number = Math.floor((Math.random() * 10) + 1);
// 	return random_number;
// }

// // console.log(random_word_length());

// // Pseudocode (random_letter function)
// // Pick a random letter based a random index of the alphabet.

// function random_letter() {
// 	var random_number = Math.floor((Math.random() * 25) + 1);
// 	var alphabet = "abcdefghijklmnopqrstuvwxyz";
// 	return alphabet[random_number];
// }

// // console.log(random_letter());

// // Pseudocode (build_random_word function)
// // Call random_word_length function to get a random number from 1 through 10.
// // Store that number in a variable called word_length.
// // Create a empty string and store it in a variable called random_string.
// // Run a loop to generate a random string that's the same length as the word_length.
// // Return the random_string.

// function build_random_word(){
// 	var word_length = random_word_length();
// 	var random_string = "";
// 	for (var i = 0; i < word_length; i++){
// 		random_string += random_letter();
// 	}
// 	return random_string;
// }