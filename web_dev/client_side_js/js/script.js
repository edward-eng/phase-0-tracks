console.log("test");

var el = document.getElementsByTagName("p");

firstPara = el[0];
firstPara.style.fontFamily = "Impact,Charcoal,sans-serif";
firstPara.style.fontSize = "20pt";

// var tacoPhoto = document.getElementsByTagName("img");

// tacoPic = tacoPhoto[0];
// tacoPic.style.border = "3px solid black";

function picBorder(event) {
	event.target.style.border = "3px solid black";
}

var tacoPhoto = document.getElementById("taco-pic");
tacoPhoto.addEventListener("click", picBorder);