list = [1,2,3,4,5,6]

print = fn list -> Enum.map(list,
fn x ->
    if (is_number(x)) do
        IO.puts(x)
        end
    end)
 end

print.(list)
list2 = Enum.map(list, fn(x) -> x *2 end)
print.(list2)