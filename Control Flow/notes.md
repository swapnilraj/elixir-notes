# Control Flow

* Elixir provides a few ways for controlling the control flow of your program.
    * `case`
    * `cond`
    * `if`
    * `do/end`

## case

* Elixir provides a case statement, like many other imperative languages.
    ```elixir
        case <expression> do
            <expression> ->
                <expression>
            <expressoin> ->
                <expression>
            _ -> # default block in imperative languages
                <expression>
        end
    ```

## if

```elixir
    if(condition, clause)

    # Keyword list
    if <condition>, do: <expression>, else: <expression>

    if <condition>, do: (
        <expression>
    )
```

* Elixir provides a macro for the if function, the if in Elixir is not a special language constructs. `if/2`
    ``` elixir
        if <condition> do
            <expression>
        else
            <expression>
        end
    ```
* Elixir also provides a macro for unless, which is `unless/2`.
    ```elixir
        unless <condition> do
            <expression>
        end
    ```

## cond

* `cond` is useful when you match against different values. It is similar to `else if` statement in other imperative languages.

    ```elixir
        cond do
            <expression> <logical operator> <expression> ->
                <expression>
            2 + 2 == 4 ->
                IO.puts("This will match if the first expression does not match")
            true ->
                IO.put("Will always match")
    ```
* If none of the conditions are matched then an error is raised. `CondClauseError`
* `cond` consider any values apart from `nil` and `false` to be `true`.
    ```elixir
        cond do
            2 ->
                IO.puts("True")
        end
    ```