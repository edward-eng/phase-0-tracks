// Write a function that takes a string as a parameter.
// Store string in a variable.
// Split the string into individual letters and store them in an array.
// Reverse the order of the letters in the array.
// Put the elements of the array back together into a string.
// Print the variable to the console if a conditional statement is true.

function reverse_string(string){
	var new_string = string;
	var array = new_string.split("");
	var reverse_array = array.reverse();
	var result = reverse_array.join("");

	if (1 == 1){
	console.log(result);
}

}

reverse_string("hello");
reverse_string("Magic: The Gathering");