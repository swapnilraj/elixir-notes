## Pattern Matching

* We have use `=` as the assingment operator but actually it is the match operator
    ``` elixir
        x = 1
        1 = x
        # 1
        2 = x
        # Match Error
    ```
* Notice `1 = x` is a valid expression, because the value on both the sides of `=` are `1`.

* The match operator can be used to extract data from a tuple or a list.
    ``` elixir
        {a,b,c} = {'hello', "hello", :hello}
        # a: 'hello'
        # b: "hello"
        # c: :hello
    ```

### Pin Operator
* The pin operator `^` is used to refer to a pre-existing variable, rather than rebinding the variable.
    ``` elixir
        {^x, y} = {2,2}
        # Match error, ^x is a reference to a pre-existing variable

        {x,y} = {2,2}
        # x: 2
    ```
* If a variable is reference more than once in a pattern, then all the instances bind to the first value.
    ``` elixir
        {x,x} = {1,1}
        {x,x} = {1,2}
        # Match Error
    ```