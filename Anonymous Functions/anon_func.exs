add = fn a,b -> a+b end
IO.puts(add.(1,2))

IO.puts(is_function(add))
IO.puts(is_function(add, 1))
IO.puts(is_function(add, 2))