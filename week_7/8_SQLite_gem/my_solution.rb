# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [by myself, with:] myself

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  	puts "LONGEST SERVING REPRESENTATIVES" 
  	min_years = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  	min_years.each { |name, year| puts "#{name} - #{year}"}
end

def print_lowest_grade_level_speakers(passing_grade)
  puts "LOWEST GRADE LEVEL SPEAKERS"
  puts $db.execute("SELECT name FROM congress_members WHERE grade_current < #{passing_grade}")
end

def print_states_representatives
	puts "STATE REPRESENTATIVES"
	puts $db.execute("SELECT name FROM congress_members WHERE location IN ('NJ','NY','ME','FL','AL')")
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps

print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers (8)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

print_separator
print_states_representatives
# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)

# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
=begin
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  

From my understanding after this challenge, the sqlite gem is used to access and utilize sql within ruby, to be desplayed via the command line. The $db then access
a the selected database. The execute method works by running a sql command within a ruby method. The given execute method is selecting the
names of the congress members from the congress_members table in which the congress members have a higher amount of years in congress
than a specefied inputed amount. 



=end
# If you're having trouble, find someone to pair on this explanation with you.