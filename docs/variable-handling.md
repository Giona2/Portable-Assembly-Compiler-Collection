# Creating a New Variable
Creating a new "variable" in pasm is fairly simple. All you would need to do is setup a new variable frame, then set however many bytes you need.
```pasm
stt 4

set !4, 0, 3000

end
```
This snippet, for example, creates a new variable frame of four bytes in size, then sets those four bytes to `3000`  
*pasm indexes the variable frame beginning at 0*

# Variable Mirroring
One variable can be set to the value held in another variable by dropping the `!` denotation before specifying the bytes size. This will cause the `set` instruction to interpret the last value as a variable that holds `n` amount of bytes rather than a value of `n` size
```pasm
stt 2

set !1, 0, 1
set  1, 1, 0

end
```
as shown here. This creates a function with a 2 byte variable frame and sets the first byte to 1. The second `set` instruction then sets the second byte to the value of the first before exiting the function.

# Arithmetic
You cannot add to, subtract from, multiply to, or divide from a variable directly. You must first load the variable's data with the `lod` instruction.  
  
Every instruction that does some kind of mathmatical or bitwise operations does so to loaded data.  
  
In `pasm`, you would do so as such...
```pasm
stt 2

set !2, 0, 6

lod 2, 0
mul !2, 2
ret 2, 0

end
```
Since I already covered what the rest does in the [introduction](introduction.md), I'll instead just focus on that third block.  
  
First, two bytes starting at variable index `0` are loaded (which was set to `6` right before this).
