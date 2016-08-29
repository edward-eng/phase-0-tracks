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
// The function iterates through the hash to look at the keys and values of each object.
// If the keys or the values of both objects match:
// The function should return <true>.
// Otherwise (else), the function should return <false>.

