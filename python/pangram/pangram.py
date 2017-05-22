def is_pangram(string):
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	lstring =string.lower()
	for c in alphabet:
		if(lstring.count(c)==0):
			return False
	return True
	
    
