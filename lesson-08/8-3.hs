harmonic n = foldl (+) 0 $ map (\x -> 1 / x) $ take n [1..]
