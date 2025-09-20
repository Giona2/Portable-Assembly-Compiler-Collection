# Precursor
Portable Assembly is a very minimal language based on actual assembly language variants. This language is mainly variable-oriented, so keep this in mind when learning about the syntactic nuances moving forward

# Basic Application
Before the interface can be integrated, this is the closest we have to a "hello, world!" program. It goes as follows:
```pasm
stt 10

set !1, 0, 1

end
```
Let's break this down line-by-line  
  
First, a new 10-byte variable frame is created with `stt 10`. This is equivalent to the
```asm
push %rbp
mov  %rsp, %rbp
```
in AT&T assembly. All this does is setup a function that has 10 bytes of local storage to work with.  
  
The program then sets the first byte in the variable frame to `1`. This is expressed with the `set` instruction, where the first number, `!1` tells the compiler that one byte is directly being set at a variable index. The `!` here is what's called an operator size denotation, or a way to detail the way the instruction is meant to process the data it's given.  
An instruction without any denotations assumes the last value is a variable index that does not contain a pointer. See the denotations page for more information  
  
Finally, the programs ends very fittingly with `end`, which just tells the compiler to end the current variable frame.
