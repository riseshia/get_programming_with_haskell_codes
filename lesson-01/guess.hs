guess n = if isEven n
          then n - 2
          else
            3 * n + 1
  where
    isEven n = mod n 2 == 0
