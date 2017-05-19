cond do
    1 + 1 == 2 ->
        IO.puts("this is a true condition")
    2 > 1 ->
        IO.puts("This is also true but does not match")
end

cond do
    1 < 0.1 ->
        IO.puts("False")
    2 < 1 ->
        IO.puts("False")
    true ->
        IO.puts("This will match because this is always true
        , usually put in to avoid CondClauseError")
end