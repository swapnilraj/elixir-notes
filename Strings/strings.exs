IO.puts("This is a string!")

word = "nic"
e = "ē"
word = word <> e

IO.puts("Interpolation is #{word}")

IO.puts("Are Strings Binary? #{is_binary(word)}")
IO.puts("Byte size?  #{byte_size(word)}")
IO.puts("Length?  #{String.length(word)}")