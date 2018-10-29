defmodule Math do
    def sum(a,b) do
        do_sum(a,b)
    end

    def do_sum(%{:a => a, :b => b}), do: a <> b
 end