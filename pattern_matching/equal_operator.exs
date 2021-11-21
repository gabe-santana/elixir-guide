# In Elixir, the = operator is actually called the match operator.
x = 1
# 1

1 = x
# 1

2 = x
# ** (MatchError) no match of right hand side value: 1

# ! A variable can only be assigned on the left side of =:

1 = unknown

#** (CompileError) iex:1: undefined function unknown/0

#Pattern matching

#The match operator is not only used to match against simple values, but it is also useful for destructuring more complex data types.

{a,b,c} = {:hello,"world",42}
a
#:hello

b
"world"

c
42

#A pattern match error will occur if the sides can’t be matched, like:
{a, b, c} = {:hello, "world"}

#** (MatchError) no match of right hand side value: {:hello, "world"}

#Pattern match on lists

[a,b,c] = [1,2,3]

#A list also supports matching on its own head and tail:

[head | tail] = [1,2,3]

#Similar to the hd/1 and tl/1 functions, we can’t match an empty list with a head and tail pattern:
[head | tail] = []

#** (MatchError) no match of right hand side value: []
