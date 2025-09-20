# Precursor
Portable Assembly is a very minimal language based on actual assembly language variants. This language is mainly variable-oriented, so keep this in mind when learning about the syntactic nuances moving forward

# Basic Application
Before the interface can be integrated, this is the closest we have to a "hello, world!" program. It goes as follows:
```pasm
stt 10

set !1, 0, 6

end
```
Let's break this down line-by-line  
  
---
  
> `stt 10`  
  
This creates a new variable frame 10 bytes in size. Think of this as local storage for the function  
  
> `set !1, 0, 6`  
  
`set` changes the first byte in the variable frame to `6`. The first argument of the majority of `pasm` instructions will be the byte size of the instruction (how many bytes the instruction should read/manipulate at a given point).  
The `!` here is called an [operator denotation](operator-denotations.md), it tells the compiler that the last value given in the instruction, `6`, is a direct value and not a variable index. If you remove the `!`, `pai` will, rather than writing `6` to the first byte in the variable frame, copy the `6`th byte in the variable frame to the `0`th (first) byte, which at this point would be zero  
  
> `end`  
  
Finally, `end` closes the current variable frame. If there was already an existing variable frame prior to calling `stt`, this will restore that previous frame
