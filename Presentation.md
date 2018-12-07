## In Haskell:

- **Int**: bounded, -2147483648 ~ 2147483647

- **Ingeter**: not bounded, can be a really big number (e.g. factorial 50)

- **No Loops, only Recursion**

Gotta make sure it terminates:

```
fib :: Int -> Int
fib(0) = 0
fib(1) = 1
fib(n) = fib(n - 1) + fib(n - 2)
```

The **order** mattters.

Would NOT work if:

```
fib :: Int -> Int
fib(n) = fib(n - 1) + fib(n - 2)
fib(0) = 0
fib(1) = 1
```
Haskell takes care of it by itself.

## Termination in general:

Gotta find the Measure Function:

```
ϕ = recursionCounts() 

fib(n) -> fib(n - 1) + fib(n - 2)

fib(n) = a

fib(n - 1) + fib(n - 2) = b

a -> b
```

e.g. fib(2):

```
ϕ(a) = ϕ (fib (2)) = ϕ (fib (2), fib (1), fib (0)) = 3

ϕ(b) = ϕ ( sum (fib (1), fib (0))) = ϕ (fib (1), fib (0)) = 2

3 > 2

ϕ(a) > ϕ(b)
```

**a -> b imples ϕ(a) > ϕ(b)** = **Termination**
