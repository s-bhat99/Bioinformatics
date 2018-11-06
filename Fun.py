#Functional programming in python
#Don’t iterate over lists. Use map and reduce.

#1. Maps: Takes a collection and returns a new one after transforming its elements all in the same way
a=['Hello','World','Okay','cool']
b=map(len, a)
print(list(b))
#map(function, list) -> General syntax 

#2. Lambda (Anonymous function)
sum= lambda a,b:a+b
print(sum(1,4))
fact=lambda a: a*fact(a-1) if a>1 else 1 #notice this carefully - recursive lambda lel
#a=lambda(value(s), return value) ->General syntax

#3. Reduce: Takes a function and a collection, returns a single value created by combining the items in the collection
from functools import reduce
s=reduce(lambda a,x:a+x,list(range(10))) #here, a is called the accumulator and x is the current item being iterated
print(s)
fsum=reduce(lambda a,b:fact(a)+fact(b),list(range(4)))
print(fsum)
#a=reduce(function, values, inital value of accumulator{optional})-> General syntax

#4. Filter (Filters a list{duh})
isEven= lambda x: True if x%2==0 else False
m=filter(isEven,list(range(100)))
print(list(m))
#a=filter(boolean function, list)->general syntax

