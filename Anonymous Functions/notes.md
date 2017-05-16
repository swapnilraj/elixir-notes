## Anonymous Functions

* Anonymous Functions can be created inline and are delimited by fn and end.
* \*Anonymous Functions are closures and have access to the variables in the scope when they are defined.
* Functions are "first class citizens" in Elixir meaning they can be passed as arguments to other functions.
* When invoking an anonymous functions, a dot is used to ensure no ambiguity between an anonymous functions and named functions.
    ``` elixir
        add = fn a,b -> a + b end
        add.(2,2) #4
    ```
* is_function returns an atom/boolean.
    ``` elixir
        is_function(add)    # true
        is_function(add, 1) # false
        is_function(add, 2) # true
    ```
    we may also check the arity of a function, with is_function.