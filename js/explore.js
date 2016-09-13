//Create program to reverse a word in js. so "hello" would become "olleh".
//take in string, set an empty new string variable, iterate through each letter and relocate with a loop.
//return reversed word. 
//call reversed word.


function reverseString(str) {
    var newString = "";
    for (var i = str.length - 1; i >= 0; i--) {
        newString += str[i];
    }
    return newString;
}

//Driver code:
// console.log(reverseString('hello'));

var result = reverseString('hello');

if (1==1){
	console.log(result);
}


