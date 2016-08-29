// Pseudocode (longest_string function)

// Add a longest_string function.
// The function takes in an array (of words or phrases) as a parameter.
// Then the function iterates through the array to see how long each string is.
// Then function should return the longest string in the array.

function longest_string(array){
	var longest_string_found = ""
	for (var i = 0; i < array.length; i++){
		// If the length of the current element in the array is longer than the length of the longest_string_found variable:
		// Store the current element in the longest_string_found variable.
		// Then return the longest_string_found.
		if (array[i].length > longest_string_found.length){
			longest_string_found = array[i]
		}
	}
	return longest_string_found
}

var result = longest_string(['cat', 'dinosaur', 'mouse']);
console.log(result)

// Pseudocode (key_value_match function)

// Add key_value_match function.
// The function takes in two objects.
// The function iterates through each object to look at the keys and values.
// If the keys or the values of both objects match:
// The function should return <true>.
// Otherwise (else), the function should return <false>.

function key_value_match(object1, object2){
	var match = false;
	for (var info1 in object1){
		if (object1.hasOwnProperty(info1)){
			console.log(info1 + ": " + object1[info1]);
		}
	}
	for (var info2 in object2){
		if (object2.hasOwnProperty(info2)){
			console.log(info2 + ": " + object2[info2]);
		}
	}
	if (object1.hasOwnProperty(info1) == object2.hasOwnProperty(info2)){
		return match = true;
	}
	else {
		return match = false;
	}
}

// Pseudocode (random_test_data function)

// Add random_test_data function.
// The function should take an integer to determine the length an of array.
// Then the function should build an array.
// Then the function should populate the array with random strings until the number of strings equals the integer given.
// The random strings should contain at least 1 letter but not more than 10.

// Driver Code
var match_result = key_value_match({name: "Steven", age: 54}, {name: "Tamir", age: 54})
console.log(match_result)

// Not sure why this still returns <true>.
var match_result = key_value_match({name: "Steven", age: 54}, {name: "Tamir", age: 14})
console.log(match_result)