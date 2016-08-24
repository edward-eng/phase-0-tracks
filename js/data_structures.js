var colors = ["blue", "pink", "green", "yellow"];
console.log(colors);

var names = ["Bobby", "Karen", "Jim", "Heather"];
console.log(names);

colors.push("purple");
console.log(colors);

names.push("Lulu");
console.log(names);

// Create an empty hash.
// Check to see if the colors and names arrays are the same length.
// If they are the same length, then loop through both arrays and pair the indexes as key and value.
// Then print the hash to the console.
// If they're not the same length, then determine which array is shorter and alert the user to input another item in the array.

var stable = {};

if (colors.length == names.length){
	for (var i = 0; i < colors.length; i++){
		stable[names[i]] = colors[i];
	}
	console.log(stable);
}