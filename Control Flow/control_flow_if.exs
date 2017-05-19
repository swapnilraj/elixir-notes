if true do
    IO.puts("TRUE!")
end

unless true do
    IO.puts("Never True")
end

if true, do: IO.puts(1 + 2)

if false, do: IO.puts("true"), else: IO.puts("else")

if true do
    a = 1 + 2
    IO.puts(a)
end

if true, do: (
    a = 1 + 2
    IO.puts(a)
)