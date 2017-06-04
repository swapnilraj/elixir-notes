# Keyword Lists

* A list of two elements tuple is known as a Keyword List.

    ``` elixir
        list = [{:a, 1}, {:b, 2}]
        # [a : 1, b : 2]
        list == [a : 1, b : 2]
        # true
    ```
* Keyword lists are important because :-
    * Keys must be atoms.
    * Keys are ordered, specified by developer.
    * Keys can be given more than once.

* Keywords lists are used to pass arguments to functions.
* The `if/2` function uses keywords lists as aguments

    ```elixir
        if <condition>, do: IO.puts("true"), else: IO.puts("false")
        if(<condition>, [do: IO.puts("true"), else: IO.puts("false")])
        if(<condition>, [{:do, IO.puts("true")}, {:else, IO.puts("false")}])
    ```

# Maps

* The goto data-structure for key-values pairs in Elixir or for that matter any language are Maps.

    ```elixir
        map = %{2 => 'b', 1 => :a}
        # %{1 => :a, 2 => 'b'}
        map[1]
        # :a
    ```
* Maps are ordered by their keys.

    ```elixir
        map = %{map | 1 => "one"}
        # %{1 => "one", 2 => 'b', :c => 3}
        map = %{map | :d => "dee"}
        # KeyError
    ```

### Map Module

* Elixir provides a module just like `List` for maps.
    ```elixir
        Map.put(map, :c, 3)
        # %{1 => "one", 2 => 'b', :c => 3}
        Map.get(map, :c)
        # 3
        Map.to_list(map)
        # [{1, "one"}, {2, 'b'}, {:c, 3}]
    ```

### Atom only keys

* Elixir provides a special syntax for maps which their keys only as atoms.
    ``` elixir
        map = %{:a => "A", :b => "B"}
        IO.puts(map.a)
    ```

## Pattern Matching

* Pattern Matching is very useful with Maps, it always matches with a subset of the Map.
    ``` elixir
        map = %{:a => 1, :b => 2}
        %{:a => a} = map
        # a = 1

        %{:c => c} = map
        # MatchError
    ```
* A pattern matches as long as the keys match.