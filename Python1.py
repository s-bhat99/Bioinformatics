#Essential python because you keep forgetting you sore loser
print('hi'*4)
print(bool(42),bool('')) #blank string is false. All other strings are true
for i in range (12,15):
    print(i) #prints from 12-15, 15 being exclusive
from sys import exit
#using sys.exit() clears the program lol 
#------------------------------------------------------------------------------------------------
#User defined functions
def hello(name):
    print(name)
#Name is the function parameter, and the value passed to this parameter is called the argument

print(None) #similar to void, it is not a string. It is a datatype on its own

#Scope
#Each function has its own local scope and each program has one global scope
#Local var destroyed when function terminates and global var when program terminates
#local is given preference if both exist
#To check if a var is global or local, check where it has been declared
#------------------------------------------------------------------------------------------------------------
 


#Error handling
try:
    x=42/0
    print(x)
except:
    print('Divide by zero error')

#------------------------------------------------------------------------------------------------------------------------
print([1,2,3,4,5,6,7][1]) #lol
print([1,2,3,4,5,6,7][-3])
a=[1,2,3,4,5,6,76,7]
print(a[2:5]) #exclusive of 5 and inclusive of 2, same works for tuples
#Lists have no fixed size, so overwriting 3 elements with 4 increases the size of the list and does not return an error
del a[2] #removes the element and leaves no gap
print(a)
print(list(range(10)))
for i in [1,4,7]:
    print(i)

#multiple assignments
a,b,c=1,2,3
a,b=b,a
print(a,b)

#some list functions
print([1,2]*3)
print(list('lamao'))
a=list(range(10))
import random
if random.randint(1,20) not in a: #in and not in used to check if element in or not in the list 
    print('yes')
else:
    print('no')
#list methods:
print(a.index(5))
#list. append(a), list.insert(a,b), list.remove(a) and list.sort() are all list methods 

#strings and tuples are immutable, lists are mutable data types
#mutable data types can be modified
#When mutable values are passed to functions, it is known as pass by reference
#to overwrite the default way of copying references, use deepcopy() function 
a=[1,2,3]
from copy import deepcopy
b=deepcopy(a)
#now any changes made to a will not be reflected in b

#-----------------------------------------------------------------------------------------------------------------------
#dictionaries
cat={'size':'fat','color':'white','age':5}
print(cat['size'])
#dictionaries are mutable
print(list(cat.keys())) #['size', 'color', 'age']
print(list(cat.values())) #['fat', 'white', 5]
print(list(cat.items())) #[('size', 'fat'), ('color', 'white'), ('age', 5)], it'a a list of tuples
for i in cat.items():
    print(i)
import random
print()
print(random.choice(list((cat.items()))))#prints a random dictionary element
#get() method to obtain values from a dictionary 
print(cat.get('name',0))#returns 0 if the value to that key is not found
#adding values to a dictionary 
cat.setdefault('name','kitty') #adds the value kitty to the key name, remains unchaged if the key already exists
#use the above method to count the occurence of each letter in a sentence
from pprint import pprint 
pprint(cat) #pretty print module is better off for printing dictionaries

#-----------------------------------------------------------------------------------------------------------------------

#strings can also have indices and slices, in and not in statements can be used
#raw strings:
print(r'this is \a raw string')
#string methods:
#1. boolean: isaplha(), isalnum(), isspace(), isdecimal()
#2. join and split:
a=['Hello','Okay']
print(' '.join(a))#notice the whitespace
a='Hello okay'
print(a.split())
print(a.split('o'))#another way of using split

#instead of using %s in strings, use .format() function
print('{} is how it\'s done'.format('Okay, this'))#neat

#---------------------------------------------------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------

#list comprehensions in python
celsius=[3,43,2335,232,0,-40,22]
faranheit=[float(9/5)*x+32 for x in celsius]
print(faranheit)
#List comprehensions are neat af and can be used for complicated things
pytriplet=[(x,y,z) for x in range(1,30) for y in range(x,30) for z in range(y,30) if x**2+y**2==z**2] #holy shit
print(pytriplet)

#Sets in python
a=set()
a.update([1,2]) #set is an unordered collection of data. Redundant items are removed
x=[1,1,1,2,3,4,3,4,3,2,1,2,3,4,4,3,2,2,2]
x=list(set(x))
print(x)#[1,2,3,4]

#enum function in string/list
s='okay'
print(list(enumerate(s)))#notice that it is a list of TUPLES
