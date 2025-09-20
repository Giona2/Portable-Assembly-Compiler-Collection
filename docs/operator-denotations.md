# Description
In order to get more functionality without inventing new instructions for the user to remember, the `operator denotation` system was created instead. Remember that the bytecode `pai` actually reads from is written as a binary file, meaning every number must be represented as such.  
  
Let's take the following `pasm` code snippet that sets the first byte in the variable frame to 2,134,897...
```pasm
set !8, 0, 2134897
```
  
Also keep in mind that almost every `pasm` instruction's first argument is the amount of bytes you are allowing that instruction to work with which, at the current state of technology, only can reach a maximum of `8` bytes. In binary, this is represented as `0b0000_1000`  
  
Notice the four bits at the beginning of this number are essentially wasted, and this is where the idea of `operator denotations` really began. Instead of letting those bits go unused, each digit just specifies how the instruction will interpret the information it's given  
  
`0b0001_1000`, for example, tells `pai` that you are giving it an 8 byte value to use directly rather than the index of a variable. In `pasm`, this is represented by prefixing the operation size with a `!` symbol.  
  
For arithmetic operations, you can tell the instruction to interpret the currently loaded variable (see [variable handling](variable-handling.md#arithmetic)) as a floating point number (rather than an integer) by flipping the third bit, `0b0010_____`  
  
An instruction size with no `operator denotation` will be interpreted as a variable index that does not contain a pointer

# Operator Denotation Reference Table
| Symbol | Description |
|--------|-------------|
| `!` | The last value given in a direct value |
| `*` | You are specifying a pointer as the last value (add `!` if you are giving the pointer's address directly, exclude if the poiter is held in the variable frame). This instruction will dereference it and use the data held at that location |
| `f` | Used solely for instructions that perform arithmetic operations on the loaded variable. This tells the instruction to interpret the loaded data as as a floating point number |
