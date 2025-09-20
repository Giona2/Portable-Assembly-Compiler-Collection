| Instruction Name | ! | * | f | Arg 0 | Arg 1 | Arg 2| Description |
|------------------|---|---|---|-------|-------|------|-------------|
| `stt` | N/A | N/A | N/A | size in bytes | N/A | N/A | Creates a new variable frame `<size in bytes>` bytes long |
| `set` | Set to a direct value | Set at a pointer | N/A | amount of bytes to set | variable index / pointer to set to | variable index / direct value to set from | Sets the given variable or pointer to a given value |
| `lod` | Load a direct value | Load the value at a given address | N/A | The amount of bytes to load | The value to load | N/A | Loads a given value to be operated upon |
| `ret` | N/A | Write at an address | N/A | Amount of loaded bytes | Value to load to | N/A | Writes the currently loaded data to a given variable index or address |
| `end` | N/A | N/A | N/A | N/A | N/A | N/A | Ends the currently loaded variable frame and restored the previous variable frame |
| `add` | Using a direct value | Using a value at an address | Interpreted as a float | Value to add from | N/A | N/A | Add to the currently loaded value |
| `sub` | Using a direct value | Using a value at an address | Interpreted as a float | Value to subtract to | N/A | N/A | Subtract from the currently loaded value |
| `mul` | Using a direct value | Using a value at an address | Interpreted as a float | Value to multiply from | N/A | N/A | Multiply the currently loaded value |
| `div` | Using a direct value | Using a value at an address | Interpreted as a float (this is a required denotation for this instruction) | Value to divide to | N/A | N/A | Divide from the currently loaded value |
