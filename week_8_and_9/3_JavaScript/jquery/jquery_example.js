$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
var bodyElement = $('body')
var human = $('Jeff','Amanda')
 
 
//RELEASE 2: 
$('h1').css({'border': '9px solid red', 'background-color':'white'}) 
$('#mascot').html('Cicada')

 
 
//RELEASE 3: Event Listener
  

  $('img').on('mouseover', function(){
    $(this).attr('src', 'http://adudesguide.com/wordpress/wp-content/uploads/2013/08/cicadas.jpg')
   }) 

  $('img').on('mouseleave', function(){
  	$(this).attr('src', 'http://socialtimes.com/files/2013/02/Dev-Bootcamp-logo.jpg')
  });
 
 
//RELEASE 4 : Experiment on your own
 
 $('#mascot').click(function(){
 	$('img').animate({
 		height: "toggle"
 	});
 })

  $('img').click(function(){
 	$('img').animate({
 		width: "100px"
 	});
 })

  $('#mascot').click(function(){
 	$('#mascot').animate({
 		borderWidth: "30px"
 	});
 })
  
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
