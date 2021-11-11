# Critical Apprasial

Group: Trenton Faillace, Erik Hombledal

* Part 1 and 2

Part 1 and two were relativly easy for me and was sort of just an extension of the first assignment.  There was a bit of confusion
with not understanding how the subsituion functions work.  But once I made a connection betweens its function
and beta reductions it started to make more sense.  However, I will talk about part 3 as it had the most substance.

* Part 3

I will start out by talking about the challenges I faced while completing this part.
To me, the hardest part was understanding the workings of the Interpreter.hs file as well as coming up with the required functions.
This came down to going to office hours with Dan and coming to an understanding by thinking of EHd and ETl in a type setting sort of manner.
What I mean by this is the statements case ... of (ECons e1 e2) sort of works as a type checker to ensure that the arguement type was a list.
This was a sort of complicated step for me to overcome but makes more sense in the setting of an interpreter and the rest of the functions fell into place.  For example, this explain why "#:#" does not parse but "(#):#" does.  This particullary is explain by how the grammar is set up to interpret a list in a manner were each subsequent element you add to a list is interpreted as a list that consists of that element as the head of the list and then the origional list as the tail of the new list.  EX: Inserting 3 into 2:1:# would look something like the following: (3:(2:1:#)) which could further be broken into the expression: (3:(2:(1:(#)))).  This is very similar to our work with the sucessor numbers, where the first element in the list is more or less the successor to the rest of the list.  This was an integral idea for this assignment and allowed for the defintions of how our interpreter works.  A question that comes up due to this definition of the grammar is if there is a way to do this without the use of this successor idea.  Is there a concrete way to use recursion on lists in a similar manner without breaking up the list like this.  Another way to ask this is if it is possible to do the same thing we do in task 3 with list comprehension rather than recursion?

* Haskell remarks

One fatal mistake I made when working on this assignment was not fully understanding how to create the desired functions in native haskell rather than in this specific interpreter.  Once I implemented all these funcions in task 3, it make it a LOT easier to go back to task two and define them there.  There really are not too many differences between the definitions in native haskell and how we implement them based on our interpreters.  Because haskell is this sort of "lazy" language it forces us to set up the types and so on, and in reality we are doing the exact same thing with the interpret.  Understanding that the intepreter is essentially just an arbitrary version of native haskell is a strange concept but it made things fall into place for me.  If we were to extend this assingment further and continue to get to more complicated lambda calculus topics things might get a little harder to implement, but in the end if we use haskell as a sort of guide, almost anything seems possible.

* Other remarks

Sum: In the funtion sum (mysum), sum x:2:3:4:# we get the result "x+(9)".  This result is correct and makese sense in this context.  The way the sum function works is it recursivly adds all the elements of a list from the right most side to the left.  So it performs all of the operations (starting with 4+0) and then is left with the free variable x and gives us the result.  In the case of sum 1:2:3:x:# we get a result that looks different but is conceptually the same: "1+(2+(3+(x+0)))".  This result is the same thing as the first, however our free variable is not at the front of the list and thus is evaluated as the first step of the recursion, because of this it expands the function in the same manner the grammar interprets it as.  I would assume there is a way to tweak the grammar to make this case not happen due to the communitivity of additions.

* Other remaks cont.

Plus_two and map:  If we replace the evaluation of this function with a y in the place of two we get the output "(y+2)" in that index of the list.  The free varible y is evaluated by the plus two function but cannot return an integer result because it is a free variable.  It is working as intended and just outputs a placeholder if we wish to fill in the free variable in the future.  This is essentially the purpose of our definitions withing lambda clalculus and allows us to store the would be output from a function with a freevariable and also evaluate all of the given integers at the same time.