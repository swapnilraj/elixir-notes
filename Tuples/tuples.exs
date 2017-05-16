tuple = {:ok, 'hello'}

IO.puts(tuple_size(tuple))

tuple = put_elem(tuple, 1, :print)

IO.puts(tuple_size(tuple))