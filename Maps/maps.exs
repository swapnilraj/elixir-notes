map = %{:a => "A", :b => "B"}

map = %{map | :a => "a"}

IO.puts(map.a)
IO.puts(Map.get(map, :a))
map = Map.put(map, :c, "C")
IO.puts(map.c)

%{:b => n} = map
IO.puts(n)