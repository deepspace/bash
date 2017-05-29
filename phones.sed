# print correct phone numbers. Use with -f switch to sed.

# print a title (\ followed by a newline escapes the newline) 
1 i\
\
Correct Phone Numbers:\

# print only 'correct' phone numbers:
/\(\?[0-9]\{3\}\)\?-\?[0-9]\{3\}-[0-9]\{4\}$/p
 
# print 'is correct' and a newline after each:
/\(\?[0-9]\{3\}\)\?-\?[0-9]\{3\}-[0-9]\{4\}$/a is correct\ 
