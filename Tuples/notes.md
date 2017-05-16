## Tuples

* In elixir tuples are defined using curly braces {}.
    ```elixir
        tuple = {:ok, "hello"}
        tuple_size(tuple) # returns 2
    ```
* Tuples stores element contiguously in memory, thus accessing a tuple by index or getting a tuple size is fast.
* Elixir follows immutable state.
* Function put_elem/3 retunrns a new tuple, retaining immutable state.
    ``` elixir
        tuple = put_elem(tuple, 1, :print)
        # [:ok, :print]
    ```