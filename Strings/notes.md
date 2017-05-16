## Strings

* Strings are stored as binary in Elixir.
* String.length() returns the length of string.
* byte_size()  returns the byte size of the string.
    ``` elixir
        word = "nicē"
        String.length(word) # returns 4
        byte_size(word)     # returns 5
    ```
    ē is UTF-8 requires two bytes, hence the discrepancy.

* <> is the concatination operator in Elixir.
* Elixir supports String Interpolation
    ``` elixir
        IO.puts("Interpolation is #{word}")
    ````

* <> is the concatination operator
    ``` elixir
        word = "wor" <> "ē"
    ````