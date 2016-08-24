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
// If they're not the same length, then determine which array is shorter and alert the user to input that many more item(s) in the array.

var stable = {};
names.push("Joe");
console.log(names);

if (colors.length == names.length){
	for (var i = 0; i < colors.length; i++){
		stable[names[i]] = colors[i];
	}
	console.log(stable);
} else {
	if (colors.length > names.length) {
		var extra_colors = colors.length - names.length;
		console.log("You need to enter " + extra_colors + " more name(s).");
	} else {
		var extra_names = names.length - colors.length;
		console.log("You need to enter " + extra_names + " more color(s).");
	}
}