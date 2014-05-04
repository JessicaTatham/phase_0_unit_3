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

var groceryList = function(list) {
  this.list = list;
  this.items = [];
}

groceryList.prototype.addItem = function(item) {
  this.items.push(item) ;
}

groceryList.prototype.deleteItem = function(item) { 
  var index = this.items.indexOf(item);
  this.items.splice(index,1)
} 

groceryList.prototype.displayItem = function() { 
    for (i=0; i<this.items.length; i++){
      console.log(this.items[i].list);
    }
} 

var Item = function(name){
  this.name = name;
}
   

groceryList.numItems = groceryList.length ; 






// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

var apple = new Item('apple')
var milk = new Item('milk')
var chicken = new Item('chicken')
var grocery_1 = new groceryList('grocery_1');
grocery_1.addItem(apple);
grocery_1.addItem(milk);
grocery_1.addItem(chicken);
grocery_1.displayItem;
grocery_1.deleteItem(apple);
grocery_1.displayItem;




// 5. Reflection 

// Jake and I really tried to tackle this challenge, with very little success. Eventually we had to take a step back from it, as I had previous commitments
// that I needed to do. Later, going back and seeing how others found a solution to this challenge, I see that in some cases, such as the addItem
// and driver tests, we were on the right track, but other than that we were way off. I had to do a lot of 'borrowing' from others solutions, but now
// that I implemented their solutions into my previous solution, I feel like I have a firm understanding of how to go about completing this challenge. That
// being said, I much prefered doing this challenge in Ruby. 