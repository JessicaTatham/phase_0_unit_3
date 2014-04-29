## Evaluate a Website! 
 
1) How does this website follow HTML Best Practices? Are there any places where 
it does not?  Provide examples of the "bad" code.

Some examples of the HTML best practices include
	-close tags: I found that all of Hacker News HTML tags were closed
	-never use inline styles: The HTML code basically always used inline styles, with font, color, and padding.
	-place external CSS files within head tag: This HTML does have its external CSS files in its head tag.
	-don't use inline javascript: The only JS I could find was at the very beginning of the HTML.
	-use H1 - H6 tags: I didn't find any uses of the H1-H6 tags.
	-wrap nav with an unordered list: I wasn't even able to find the nav HTML.
	-cut it down: Hacker News definitely needs to retake a look at this HTML and cut it down/refactor, because it is repetative, and very difficult to follow.
You can see here, that the HTML uses a lot of inline styles and is extremely repetative.

#<table border=0 cellpadding=0 cellspacing=0 width="85%" bgcolor=#f6f6ef>
          <tr>
            <td bgcolor=#ff6600>
              <table border=0 cellpadding=0 cellspacing=0 width="100%" style="padding:2px">
A better approach would be taking this inline style into their CSS stylesheet. This would also cut down on the code and make the HTML more readable.
 
2) What do you think of the HTML? Did the writers use IDs and Classes properly? Did you like the way they used HTML tags? Please use examples with your arguments.

The writers used lots of IDs and Classes, but too repatively. They should have grouped their HTML more specifically. The writers use so much inline style, but they also utilize various classes. They should be using these class grouping to style the HTML. Here is an example of the overuse of inline styles, with too many various classes and ids: 

# <tr style="height:5px"></tr>
                <tr>
                  <td align=right valign=top class="title">17.</td>
                  <td>
                    <center>
                      <a id=up_7662240 href="vote?for=7662240&amp;dir=up&amp;whence=%6e%65%77%73">
                        <div class="votearrow" title="upvote"></div>
                      </a>
 
3) How did the authors handle formatting? Did they include it in the HTML or 
separate it into a CSS file? Or did they do both? Again, include examples.

The authors really didn't utalize the HTML's best practice of Don't Repeat Yourself. Which led to an overabundace of repeated code that was overrun with inline styling, making it hard to read. The authors used both styling in the HTML and in a CSS file. Here's an example: 

# <link rel="stylesheet" type="text/css" href="news.css?qs6Q0nW0sAG91G9orYmc">

#td bgcolor=#ff6600>
              <table border=0 cellpadding=0 cellspacing=0 width="100%" style="padding:2px">
                <tr>
                  <td style="width:18px;padding-right:4px"><a href="http://ycombinator.com"><img src="y18.gif" width=18 height=18 style="border:1px #ffffff solid;"></img></a></td>

 
4) Did the authors include anything you didn't immediately understand? 
If so, what?

The JavaScript at the beginning of the HTML seems to hide arrows and ping the server, but my JS knowledge is so beginner that I don't immediately understand the complex code.

I also wasn't sure what this piece of the HTML was doing: 

#<form method=get action="//hn.algolia.com/">Search: <input type=text name="q" value="" size=17></form>

I researched using w3schools and found that HTML forms are sued to pass data to a server, in this case algolia.com, which I believe is making the search box that is at the bottom of the Hacker News website.

 
5) How did the authors organize the CSS file? Was it DRY?

The CSS file appears to be very organized and much more DRY than the HTML.
 
6) Did the authors incorporate any responsive design into the site?

The authors included a .rotate method that rotates the page for mobile devices, and has the text change color based on whether you have visited the link or are hovering over it. Other than those two things, the site doesn't have very much responisive design.
 
7) What are your overall thoughts on the HTML/CSS from this website based on 
what you've read?

This website is very simplistic in it's design, but the HTML is extremely repetative and redundant. I believe that with some major refactoring, this website HTML could be substantially improved. The CSS is very organized, but needs to be utilized more instead of the HTML inline styling.



##REFLECTION

I had quite a bit of trouble trying to use sublime to organize the HTML, and eventually had to find a website that did it for me. After I figured that out, it was just a matter of sifting through the code to understand it. I was happy to find that the majority of the HTML, I understood and feel like I could possibly replicate it. I felt like I could confidently review the HTML and CSS and see where it needed improvements. 
