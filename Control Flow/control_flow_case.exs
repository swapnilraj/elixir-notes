tuple = {1,2,3}

case tuple do
    {4,5,6} ->
        IO.puts("This won't ever match")
    tuple ->
        IO.puts("Matches")
    _ ->
        IO.puts("Similar to default block")
end

case {1,2,3
} do
    {1,x,3} ->
        IO.puts(x)
     _ ->
        IO.puts("Matches everything in chronological order")
end

IO.puts(x)

# case tuple do
#     {^x, 2, 3} ->
#         IO.puts("Does not match")
#     _ ->
#         IO.puts("Default comes back again")
# end