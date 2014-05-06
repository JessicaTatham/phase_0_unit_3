// U3.W8-9: Challenge you're converting
// Nums to Words Challenge

// I worked on this challenge [by myself].

// 2. Pseudocode

// Define a variable, super_fizzbuzz, that takes an array as the argument. 
// Use a for loop that:
// 	if x%15 == 0 return FizzBuzz for x
// 	else if x%3 == 0 return Fizz for x
// 	else if x%5 == 0 return Buzz for x
//  else returns x


// 3. Initial Solution

// var super_fizzbuzz = function(array) {
// 	array.map(function(num) {
// 		if (num% 15==0) {
// 			console.log('FizzBuzz');}
// 		else if (num%5 == 0) {
// 			console.log('Buzz');}
// 		else if (num%3 == 0) {
// 			console.log('Fizz');}
// 		else {
// 			console.log(num);}
// 		})
// 	};



// 4. Refactored Solution

var super_fizzbuzz = function(array) {
	array.map(function(num) {
		console.log((num% 15===0 ? 'FizzBuzz':'') || (num%5 === 0 ? 'Buzz' : '') + (num%3 ===0 ? 'Fizz' : '') || num);
		})
	};





// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

super_fizzbuzz([1,3,5,15,9,4])

super_fizzbuzz([25,100,300,276,23654])

super_fizzbuzz([1])





// 5. Reflection 
// When I started this challenge, I had a good idea about
// how I wanted to solve it, but I wasn't sure how to do it in 
// JavaScript. I had to research how to loop through an array
// to access each element, but once I found that, I was able to
// find my solution. I found the refactored code on rosettacode.org, and then I just had to tweek it a little to suit 
// my purposes for this challenge. I enjoyed the challenge of turning the super_fizzbuzz method from ruby into javascript.
