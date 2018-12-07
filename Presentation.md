In Haskell:

**Ingeter**: not bounded, can be a really big number. (e.g. factorial 50)

**Int**: bounded, -2147483648 ~ 2147483647.

No Loops, only Recursion.

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

Measure function:


