

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

function matchingPairs(a, b){
	for(var key in a) {
		if (a[key] == b[key]){
			return true;
		}
	}
	return false;	
}


//Release 2 part 1:

//Function that akes integer for length
//builds and returns array of strings of the given length. 
//example, given an argument of 3 it would return three random words in an array.
//word length range is from 1-10 letters
//look up generating a random number(for the word length?)



function randomWords(num){
	//take in number and create that many words (times?) Loop through that many times
	//generate random number for the length of each word between 1 and 10
	//load completed word into the array and continue the next iteration/loop
	//return completed array
	var wordArray = [];
	var letters = "abcdefghijklmnopqrstuvwxyz";
	//Generate num words
	for (var i = 0; i < num; i++) {
		var string = "";
		// Generates random string length
		var stringLength = Math.floor((Math.random() * 10) + 1);
		//Generates a string of stringLength
		for (var j = 0; j < stringLength; j++) {
			string += letters.charAt(Math.floor(Math.random() * letters.length));
		}
		wordArray.push(string);
	}
	return wordArray;
	
}


console.log(randomWords(3));

//Driver Code:
//Release 0 call: 
// console.log(longestWord(words));

//Release 1 calls:
// console.log(matchingPairs(info, info2));
// console.log(matchingPairs(moreInfo2, moreInfo));

//Release 2 call:




	

