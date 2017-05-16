# Elixir

### Scalability

* All elixir code runs inside lightweight threads of execution called processes

* Not uncommon to have thousands of processes running concurrently in the same machine.

* Processes are able to communicate with other processes on different machines in the same network.

### Fault-tolerance

* Elixir provides supervisors which describe how to restart parts of your system when things go wrong.

``` elixir
import Supervisor.Spec

children = [
  supervisor(TCP.Pool, []),
  worker(TCP.Acceptor, [4040])
]

Supervisor.start_link(children, strategy: :one_for_one)
```

## Language Features

### Functional Programming

Functional programming provides a coding style that helps developers write code that is declarative i.e., more concerned with describing the problem.

### Erlang compatible

Elixir runs on the Erlang VM giving developers complete access to Earlang's ecosystem. An Elixir program can invoke any Erlang functions with no runtime cost.
