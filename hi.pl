#This is a typical program of how perl fucking works, and will have several comparisons with python
# remember these:
    #Perl Code is context sensitive (Every expression in perl is evaluated in scalar or list context)

use strict;
use warnings;  #these are called pragmas
print 'Hello World!\n'; #typical print statement and use single quotes for strings pls thnx
my $x=1; #declaring a scalar
print $x;
my @a= (
    'Okay',
    1,
    "no",
    16, # trailing comma is okay
);
print"\n";
#Use dollar sign to access values from an array
print $a[0]; #to get a single value from an array, can also use negative indices
#-$ is used to access a scalar value (a number or a string)
# undef is equivalent to none in python
# there is no boolean: undef 0, '', "" are all false in perl

#a scalar and an array can have same names without any clashes
my %lis= ( #these are called hash variables similar to dictionary, has no predefined order
        "Bhat"=> "Shriram",
        "Einstein"=>"Albert",
        "Darwin"=>"Charles",
);
print'\n';
print $lis{"Bhat"}; #Returns 'Shriram';
#  => is called a fat comma lol 
#Use a dollar sign whenever you retrieve a value from a list or a hash variable 
my @lis=%lis; #converts hash variable to a list or twice the amount of elements

my $data = "orange";
my @data = ("purple");
my %data = ( "0" => "blue");

print $data;      # "orange"
print $data[0];   # "purple"
print $data["0"]; # "purple"
print $data{0};   # "blue"
print $data{"0"}; # "blue"

#Hence, makes no difference as long they are both not scalars/ arrays/ hash variables
#a List in perl, unlike python is just a VALUE that can be assigned to an array or a hash variable they are enclosed within '()' and seperated with commas
#note that lists cannot be nested. If nested, it flattens it to a single long list. You can use this property to easily concatenate lists

# a scalar exprssion evaluated as a list is silently converted to a single element list. 
# an array expression evaluated as a scalar returns the length of the array
# a list expression evaluated as a scalar only returns its last element

#The built in function print evaluates all its expression in list context. Be cautious about the context of a function while using it
#Eg. Try using the built in function reverse when you reverse a list and a scalar individually
print reverse 'hello',' world';
my $ss=reverse 'Hello world';
print $ss;
#when you include another list into a list and try to access it using '$', it is accessed as a scalar and the length is returned instead of the value
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------

#a scalar value can contain a reference to another variable. A reference is created using a backslash
my $color='red';
my $ref1=\$color;
#to access the variable in the reference, put the reference variable in '{}'
print"\n";#note that escape sequence cannot be used in single quote, try it out lol
print ${$ref1}; #this needs some thinking 
#you can omit the braces, if you're confident
print $$ref1; #notice the difference

#If you have a reference to a list (array) instead of a scalar, then you can use the arrow operator
my @okay=(
    'hi', 'no', 'ew', 'yum',#remember that trailing commas are allowed
);
my $ref2=\@okay;
print"\n";
print ${$ref2}[0];
print "\n";
print $ref2->[0]; #both are the same, the latter is called the arrow operator method 
#-----------------------------------------------------------------------------------------------------------------------------------

#using and declaring data structures: (nested lists)

print"\n";
my @secarr=(
    'This', 'is', 'a sample',
);

my $arref=\@secarr;

my @firstarr = (
    "okay", "no", @$arref,   #this needs some thinking but it's really neat
);
print @firstarr;

print"\n";

#A second method to use nested lists is to use anonymous arrays ('[]') and anonymous hash ('{}')

#trying to get the same thing as above using anonymous array

my@anarr= (
    "okay",
    "no",
    [
        "this",
        "is",
        "a sample",
    ],
);
print @anarr;
print @anarr[1];
print @{@anarr[2]};
print"\n";
print @{@anarr[2]}[0];
#please re read this it's brilliant

#----------------------------------------------
#-------------------------------------------------------
#------------------------------------------------

#conditionals
print"\n";
my $s='Hello, okay I tried a lot but it\'s hard to keep up';
my $len= length $s;
if($len>15){
    print 'yes';
}
elsif ($len<2){
    print 'maybe';
}
else{
    print'no';
}
# a shorter version of if in perl is:
print ', the sentence is really big' if $len>15; #single line if statement
#there are also ternary and 'unless' operators but they just add to the confusion so nevermind those 
print"\n";
#----------------------------------------
#---------------------------------------
#LOOPS start here so phew
#1. while
my $i=0;
my @arr=(
    'Hi', 'This', 'is', 'a', 'good', 'day',
);
while($i<scalar @arr){
    print "\n",$i, ':', $arr[$i],;
    $i++; #same incremenet operator used that's nice and good to know smh
}
#similary, do-while loops exist
#until is also used for a loop but ignore that for now 
#2. For loops: (foreach keyword is a synonym to for in perl)
#a. Classic style for 
for(my $i=0;$i< scalar @arr;$i++){
    #print "\n", $i, ':', $arr[$i];    (same thing is printed again so I'm making it a comment, you get the idea)
}

for my $i (@arr){     #this needs some thinking
    print $i, "\n";
}
#to assign indices instead of the list values to the iterating variable
for my $i (0.. $#arr){
    #print $arr[$i], "\n";  (Same thing is printed so I'm making it a comment, again)
}
#to iterate over the elements of a hash variable, use the keyword 'keys' to retrieve the elements of the hash
my %k=(
    'Hello'=>'Hi',
    'Okay'=>'ok',
    'What'=>'wut',
);
for my$i (keys %k){
    print "\n", $i, ':', $k{$i};
}
#by default these keys are random and unsorted. use the sort keyword to get your shit right 
for my$i (sort keys %k){} #You get the idea

#use the keywords next and last instead of continue and break
for (@arr){   #if no iterator is provided, $_ is the default iterator used 
    print $_; # returns HiThisIsagoodday, check line #144 where the array is declared
}

#shortcut syntax to looping 
print "\n";
print $_ for @arr; #same thing is printed

#----------------------------------------------
#-------------------------------------------------------
#------------------------------------------------

my@lis=(1,2,3,4,5,);
$lis[5]=6;
print @lis; #this is possible (arrays in perl are not immutable), prints 123456

#array functions for modifying those arrays 
#pop, push, shift and unshift are some of those 
#1. pop: extracts the last element from an array and returns it
#2. push: appends extra elements to the end of the array
#3. shift: extracts the first element of the array and returns it
#4. unshift: inserts new elements to the beginning of an array

print pop @lis;
print"\n", @lis; #the list is modified after popping
pop @lis;
print "\n", @lis; 
push @lis, 7,8,9,10, "okay, you tried";
print "\n", @lis; 
#similarly for shift and unshift
#all these are subfunctions of the array function splice
print "\n", splice @lis, 1,4; #1 included, 4 not included. That's how it works
print "\n", @lis; #all these are destructive functions, 