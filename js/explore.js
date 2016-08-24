// Write a function that takes a string as a parameter.
// Reverse the string by taking the first letter and moving it to the back until the last letter is the first letter.

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