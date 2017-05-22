def is_isogram(string):

	fstring = string
	punctuations = '''!()-[]{};:'"\,<>./?@#$%^&*_~'''
	no_punct = ""
	for char in fstring:
	   if char not in punctuations:
	       no_punct = no_punct + char	
	
	print("no_punct:"+no_punct)
	for c in no_punct:
		if (string.count(c) > 1):
			print("character > 2 :"+c+"1")
			return False
	return True
    
