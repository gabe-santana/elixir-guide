#Use the pin operator ^ when you want to pattern match against a variable’s existing value rather than rebinding the variable
x = 1
#1

^x = 2
# ** (MatchError) no match of right hand side value: 2

#We can use the pin operator inside other pattern matches, such as tuples or lists:

[^x, 2, 3] = [1, 2, 3]
#[1, 2, 3]

{y, ^x} = {2, 1}
#{2, 1}

#Because x was bound to the value of 1 when it was pinned, this last example could have been written as:

#It is a common practice to bind those values to the underscore when you don't care about a particular value
[head | _] = [1, 2, 3]

#The variable _ is special in that it can never be read from. Trying to read from it gives a compile error:

_
#** (CompileError) iex:1: invalid use of _. "_" represents a value to be ignored in a pattern and cannot be used in expressions
