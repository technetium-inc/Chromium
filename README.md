# Chromium
 Yet another esoteric programming language. This one is made in Lua and has two purposes:
  1. Make a language with a cool name.
  2. Emphasize/showcase the power of pure, painful, arduously composed nonsense.

## Syntax
 Chromium is a mixture of Befunge and Thulium but without the Bf part of things (very little memory space as opposed to the aforementioned).

 Chromium functions using only 3 memory cells that can be accessed. In the docs these are referred to as a, b, and c respectively.

 It has a few commands:

 Command | Functionality 
 --------|--------
  .      | prints the current memory cell
  ,      | prints the current memory cell's ASCII
  !      | starts a program
  @      | ends a program
  [0-9]  | puts a digit in the memory
  ?      | puts a random digit in memory
  \#     | accepts one digit of input and puts that in memory
  $      | add 10 to the memory
  `      | add 1 to memory
  \      | subtract 1 from the memory
  \|     | subtracts 10 from memory
  \>     | move right in memory
  <      | move left in memory
  %      | ```c = a % b```
  \+     | ```c = a + b```
  \-     | ```c = a - b```
  /      | ```c = a / b```
  \*     | ```c = a * b```
