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
