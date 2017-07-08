fib 1 = 1
fib 2 = 1
fib n = fastFib 1 1 (n - 2)

fastFib a b 0 = b
fastFib a b n = fastFib b (a + b) (n - 1)
