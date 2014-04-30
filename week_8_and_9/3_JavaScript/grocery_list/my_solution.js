// U3.W8-9: 


// I worked on this challenge [with: Jessica Tatham, Jake Huhn ].

// 2. Pseudocode

// User Stories (As many as you want. Delete the statements you don't need)
//As a user, I want to add / remove items from list. 
//As a user, I want to display grocery items that are on the list. 
//As a user, I want to display the number of items left on the list. 

// Create a new object groceryList, that houses an empty array 
// Within groceryList, add a new variable addItem that is equal to a new function that accepts an item as its argument
// addItem will push the given string to the groceryList array 

// Add a new variable deleteItem that is equal to a function that will delete a given item from the groceryList array 

// Add a new variable displayItems that is equal to a function that will console log the current array 

// Add a new variable numItems that is equal to a function that console logs the length of current array 

// 3. Initial Solution

var groceryList = []; 

groceryList.displayItem = groceryList ; 
   
groceryList.addItem = function(item) {
  groceryList.push(item) } ;
; 

groceryList.numItems = groceryList.length ; 

groceryList.deleteItem = function(index_of_item) { 
  groceryList.splice(index_of_item) } ;
; 

// 4. Refactored Solution



// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

groceryList.addItem('apple') === groceryList['apple'] 
groceryList.displayItem

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  groceryList.addItem('apple') === groceryList['apple']
  "apple is added to groceryList. "
)

// 5. Reflection 