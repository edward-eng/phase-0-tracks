// var colors = ["blue", "red", "green", "black"];

// var names = ["Penny", "Daisy", "Harry", "Potter"]

// colors.push("brown");
// names.push("George");

// console.log(colors);
// console.log(names);

// var horses = {};

// for (var x = 0; x < names.length; x++) {
//   horses[names[x]] = colors[x];
// }

// console.log(horses);

function Car(make, model, color) {
	this.make = make;
	this.model = model;
	this.color = color;

	this.takeOff = function() {
		console.log("0-60 in 3 seconds!");
	};
}

var newCar = new Car("Honda", "Civic", "white");
console.log(newCar);
newCar.takeOff();

var newCar = new Car("Ford", "Mustang", "black");
console.log(newCar);
newCar.takeOff();

var newCar = new Car("Kia", "Sonata", "gold");
console.log(newCar);
newCar.takeOff();

var car = {
	make: "Honda",
	model: "Civic",
	color: "white",
	fullTank: true,
	gasLight: function() {
		if (this.fullTank) {
			console.log("Step on it!");
			} else {
				console.log ("You need gas now.");
			}
	}
}

car.gasLight();





// =========================
// OLD WORK

// var colors = ["blue", "pink", "green", "yellow"];
// console.log(colors);

// var names = ["Bobby", "Karen", "Jim", "Heather"];
// console.log(names);

// colors.push("purple");
// console.log(colors);

// names.push("Lulu");
// console.log(names);

// // Create an empty hash.
// // Check to see if the colors and names arrays are the same length.
// // If they are the same length, then loop through both arrays and pair the indexes as key and value.
// // Then print the hash to the console.
// // If they're not the same length, then determine which array is shorter and alert the user to input that many more item(s) in the array.

// var stable = {};
// names.push("Joe");
// console.log(names);

// if (colors.length == names.length){
// 	for (var i = 0; i < colors.length; i++){
// 		stable[names[i]] = colors[i];
// 	}
// 	console.log(stable);
// } else {
// 	if (colors.length > names.length) {
// 		var extra_colors = colors.length - names.length;
// 		console.log("You need to enter " + extra_colors + " more name(s).");
// 	} else {
// 		var extra_names = names.length - colors.length;
// 		console.log("You need to enter " + extra_names + " more color(s).");
// 	}
// }


//  Create a constructor function for a car
// pass arguements for make model and color
// this will have an attribute that also says whether the car needs maintenance or not true or false
// and give the car a function to say VROOOOM
// and a function to say the check engine light is on with a conditional to check the needs maintenance attribute and prints whether the light is on or off

// function Car(make, model, color) {
// 	console.log("Our new car:", this);
	
// 	this.make = make;
// 	this.model = model;
// 	this.color = color;
// 	this.maintenance = true;

// 	this.accelerate = function() { console.log("VROOOOM!!!"); };

// 	this.check_engine_light = function() {
// 		if (this.maintenance) {
// 			console.log("The check engine light is on.");
// 		} else {
// 			console.log("The check engine light is off.");
// 		}
// 	}

// 	console.log("CAR INITIALIZATION COMPLETE");
// }

// // Driver Code
// console.log("Let's build a car...");
// var car = new Car("Toyota", "Supra", "Red");
// console.log(car);
// car.accelerate();
// car.check_engine_light();
// car.maintenance = false;
// car.check_engine_light();

// console.log("==========");

// console.log("Let's build another car...");
// var another_car = new Car("Ford", "Focus RS", "Green");
// console.log(another_car);
// another_car.accelerate();
// another_car.check_engine_light();
// another_car.maintenance = false;
// another_car.check_engine_light();

// console.log(another_car.length);

// Test to loop through keys and values
// for (var whatever_I_want in car) {
// 	if (car.hasOwnProperty(whatever_I_want)) {
// 		console.log(whatever_I_want + " -> " + car[whatever_I_want]);
// 	}
// }