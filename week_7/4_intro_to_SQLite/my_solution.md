# U3.W7: Intro to SQLite

I worked on this challenge with Chantelle Turnbull.

## Release 0: Create a dummy database

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
sqlite> sqlite3 dummy.db
   ...> 


## Release 1: Insert Data 

sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 21:35:34  2014-04-26 21:35:34
2           Jessica     Tatham      jectatham@gmail.com    2014-04-26 21:41:23  2014-04-26 21:41:23
3           Chantelle   Turnbull    chantelleturn@gmail.c  2014-04-26 21:43:35  2014-04-26 21:43:35
sqlite> 

    ## Release 2: Multi-line commands

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey','Lin','kimmy@devbootcamp.com',DATETIME('now'),DATETIME('now'));
Error: column email is not unique
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 21:35:34  2014-04-26 21:35:34
2           Jessica     Tatham      jectatham@gmail.com    2014-04-26 21:41:23  2014-04-26 21:41:23
3           Chantelle   Turnbull    chantelleturn@gmail.c  2014-04-26 21:43:35  2014-04-26 21:43:35
sqlite> 

     ## Release 3: Add a column

sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames 
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 21:35:34  2014-04-26 21:35:34  Kimchee   
2           Jessica     Tatham      jectatham@gmail.com    2014-04-26 21:41:23  2014-04-26 21:41:23  Jess      
3           Chantelle   Turnbull    chantelleturn@gmail.c  2014-04-26 21:43:35  2014-04-26 21:43:35  Chanty    
sqlite> 


     ## Release 4: Change a value

sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames  
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-04-26 21:35:34  2014-04-26 22:09:57  Ninja Coder
2           Jessica     Tatham      jectatham@gmail.com    2014-04-26 21:41:23  2014-04-26 21:41:23  Jess       
3           Chantelle   Turnbull    chantelleturn@gmail.c  2014-04-26 21:43:35  2014-04-26 21:43:35  Chanty     
sqlite> 

     ## Release 5: Reflect

Chantelle and I found that this was a pretty easy challenge. We had a few problems with a couple of error messages, but once we figured out that our column was called nicknames not nickname, everything went relatively smoothly. I really enjoyed actually getting to create a database and practicing SQL. I also appreciate the extra practice with the command line, as that is still something that I don't fully grasp the concepts of. We found W3Schools SQL tutorial to be the most helpful source when completing this challenge. 