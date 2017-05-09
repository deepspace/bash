# A little bit of regexp. 
If you grep for something and you want to grep the first character to a specific character, the you use the ^ in front of the character you search for. 
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
