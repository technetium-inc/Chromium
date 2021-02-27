# Chromium (GibberScript)
 Yet another esoteric programming language. This one is made in Lua and has two purposes:
  1. Make a language with a cool name.
  2. Emphasize/showcase the power of pure, painful, arduously composed nonsense.

## Syntax
 Chromium (or if you like, GibberScript) is a mixture of Befunge and [Thulium](https://github.com/JavaCode7/Thulium) but without the Bf part of things (very little memory space as opposed to the aforementioned).

 Chromium functions using only 3 memory cells that can be accessed. In the docs these are referred to as a, b, and c respectively.

 It has a few commands:

 Command | Functionality 
 --------|--------
  .      | prints the current memory cell
  ,      | prints the current memory cell's ASCII
  @      | ends a program
  [0-9]  | puts a digit in the current memory
  ?      | puts a random digit in current memory
  \#     | accepts numeric input and puts that in memory
  $      | add 10 to the current memory
  `      | add 1 to current memory
  \      | subtract 1 from the current memory
  \|     | subtracts 10 from current memory
  \>     | move right in memory
  <      | move left in memory
  %      | ```c = a % b```
  \+     | ```c = a + b```
  \-     | ```c = a - b```
  /      | ```c = a / b```
  \*     | ```c = a * b```
  ^      | ```c = a ^ b```

## Examples
 Hello World:
 ```
 $$$$$$$``,$$$\,```````,,```,`||||||||,`````$$$$$,````$$,```,\\\\\\,\\\\\\\\,@
 ```
