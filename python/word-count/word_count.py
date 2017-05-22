
def word_count(param):
    stringlist = str.split()
    stringset = set(stringlist)
    for i in stringset:
        #print(i)
        print(i+": "+str(param.count(i))+"\n")
