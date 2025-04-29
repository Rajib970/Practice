def add(fname: str|list[int,int,str], lname:str):
    return fname.capitalize(); + " " + lname

fname = [True,True,True]
lname = "Shaw"

name = add(fname.capitalize(),lname)

print(name)