# A little bit of regexp. 
If you grep for something and you want to grep the first character to a specific character, then you use the ^ in front of the character you search for. 
Ex. grep '^-' file_to_search 	# This will give you every line that begins with - 
Ex. ls -l /bin/| grep '^-'		# This will give ever file in /bin that start with a - 
Like this: -rwxr-xr-x 1 root root     946 nov 17 21:37 which

If you want the opposite, search for everything that ends with an -, then you use a $. 
Ex. grep '-$' file_to_search 	# This will give you every line that ends with - 
Ex. peter@ubuntu:~/Documents/Shellcourse/bash$ ls -l /bin/| grep 'grep$'
lrwxrwxrwx 1 root root       6 jan 29 19:30 bzegrep -> bzgrep
lrwxrwxrwx 1 root root       6 jan 29 19:30 bzfgrep -> bzgrep

grep can be piped ( | ) the output of any program that writes to stdout.  
^ : Anchor the regexp to the beginning of the line  
$ : Anchor to the end of the line.  

Regexp Meta Characters. 
* Meta characters take on special significance in regular expressions. 
* The meta characters used in regexps are: ^ $ . [ ] { } - ? * + ( ) | \ 
* ^ and $ anchor the regexp to the beginning and end of ther line. 
* . matches any character. 
* \ matches what follows it (allows meta characters to be matched)   
* \[  \] bracket a set of characters, match only one within the set.  
* ^ at the beginning of a bracketed expression negates the expression.
[ABC] means 'look for any single character that is in the set A, B, C' 
[^ABC] means 'look for any single character that is not in the set A, B, C' 

Quantifiers 
* In extended regexps (grep -E...):  
  ? matches the preceding expression 0 or 1 times.  
  \* matches 0 or more times.  
  \+ matches 1 or more times. 

* An exact number of matches can be specified by {n, m} where n is the least significant number to match and m is the most. 
  {n} match exactly n times.  
  {n, m} match at least n and at most m times.  
  {n, } match n or more times.  
  { ,m} match at most m times.  

Alternation 
* A vertical pipe ( | ) matches either what is on its left or what is on its right.  
* 'ABC | XYZ' matches either 'ABC' or 'XYZ', but not AXY, for example. 
* [ABC | XYZ] matches any single character in the brackets appearing once. (Same as [A-CX-Z]) 
* Alternation is a feature of extended regular expressions (grep -E...) 

Back references 
* The ( and ) meta characters are used for grouping regexps into sub-expressions. 
  This might be done to make the expression easier to read or for disambiguation, but...   
  it is also done to refer back to part of a regexp if there is a replacement clause.   

  
