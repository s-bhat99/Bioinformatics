#Binary search
x,a=input().split(),input()
u=int(len(x))
l=0
for i in x:
    m=int((u+l)/2)
    if a<x[m]:
        u=m-1
    if a>x[m]:
        l=m+1
    if a==x[m]:
        print('Located at '+str(m)+' index')
        exit()
