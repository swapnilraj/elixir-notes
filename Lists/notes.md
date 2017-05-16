## (Linked) Lists

* Lists in Elixir are linked lists.
* Getting the size of a list requires a full traversal.
* Functions hd/1 and tl/1, return the head and tails of a list.
* When Elixir sees a list of printable ASCII numbers, Elixir will print that as a char list. This is quite common when interfacing with Erlang code.
* A list of character can be made by wrapping the character in single quotes, Elixir will literally treat it as a list of characters.
    ``` elixir
        list = 'hello'
        print.(list)
        >104
        >101
        >108
        >108
        >111
        >[:ok, :ok, :ok, :ok, :ok]
    ```

* Updating a list is fast as long as we are pre-pending, because the new element has to just point as the current head.

    ``` elixir
        list = [1 | [2 | [3 | []]]
        list = [0 | list]
    ```