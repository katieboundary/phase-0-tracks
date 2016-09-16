

//Release 0:

//takes an arry of words/phrases
//iterates through the array and finds the length of the item at each index (can use "str".length)
//compares to the other ones/ or just keeps the longest one so far
//returns the longest word/phrase
//given ["long phrase", "longest phrase", "longer phrase"]
//will return "longest phrase"


var words = ["long phrase", "longest phrase", "longer phrase"];
	
function longestWord(array){
	var longest = "";
	
	for (var i = 0; i < words.length; i++) {
	    if ( words[i].length > longest.length ) {
	        longest = words[i];
	    }
	
	}
	return longest
}


//Release 1:

//Function takes two objects(like hashes) and checks if they share at least one key-value pair.
//If called with {name: "Steven", age: 54} and {name: "Tamir", age: 54} the function would return true.
//Add driver code that tests a true and false result.

var info = {name: "Steven", age: 54};
var info2 = {name: "Tamir", age: 54};
var moreInfo = {name: "Jill", age: 32};
var moreInfo2 = {name: "Hank", age: 87};

function matchingPairs(hash1, hash2){
	for (var i = 0; i )
}


//Release 0 call: 
console.log(longestWord(words));



	

