# Critical Apprasial

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

* Other remarks

Sum: In the funtion sum (mysum), sum x: