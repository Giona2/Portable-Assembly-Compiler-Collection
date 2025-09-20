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
