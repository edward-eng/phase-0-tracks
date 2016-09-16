// Declare a function that takes in a string as a parameter.
// Split the characters of the string into individual strings and store them into an array.
// Reverse the elements in the array.
// Join the elements of the array together into a string and store the string in a variable.
// Return the variable that contains the reversed string.

function reverseString(string) {
	var separate_letters = string.split('');
	var reverse_letters = separate_letters.reverse();
	var join_letters = reverse_letters.join('');
	return join_letters
}

var reversed_string = reverseString('palindrome');
console.log(reversed_string);




// ========================================
// OLD WORK

// Write a function that takes a string as a parameter.
// Store string in a variable.
// Split the string into individual letters and store them in an array.
// Reverse the order of the letters in the array.
// Put the elements of the array back together into a string.
// Print the variable to the console if a conditional statement is true.

// function reverse_string(string){
// 	var new_string = string;
// 	var array = new_string.split("");
// 	var reverse_array = array.reverse();
// 	var result = reverse_array.join("");

// 	if (1 == 1){
// 	console.log(result);
// }

// }

// reverse_string("hello");
// reverse_string("Magic: The Gathering");