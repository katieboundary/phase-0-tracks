//takes an arry of words/phrases
//iterates through the array and finds the length of the item at each index (can use "str".length)
//compares to the other ones/ or just keeps the longest one so far
//returns the longest word/phrase
//given ["long phrase", "longest phrase", "longer phrase"]
//will return "longest phrase"

// for 

// var array = ["long phrase", "longest phrase", "longer phrase"];

// function longestWord (array){

// 	}
//----



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

console.log(longestWord(words));
	

