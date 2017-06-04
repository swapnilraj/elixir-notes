list = [{:a, 1}, {:b, 2}]

IO.puts([a: 1, b: 2] == list)

# if  macro
if true do
    IO.puts("True")
end

if true, do: (
    a = 1
    IO.puts(a)
)
 #if/2 function with keyword list for clause
if true, do: IO.puts("True"), else: IO.puts("False")
if(!false, [do: IO.puts("true"), else: IO.puts("false")])
if(!false, [{:do, IO.puts("true")}, {:else, IO.puts("false")}])