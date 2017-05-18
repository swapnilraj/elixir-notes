x = 1
IO.puts(1 = x)

# IO.puts(2 = x)
{a,b,c} = {'hello', "hello", :hello}
IO.puts(b)

# Pin Operator
#tuple = {^x, y} = {2,2}
# Match error, ^x is a reference to a pre-existing variable

{x,y} = {2,2}
IO.puts(x)