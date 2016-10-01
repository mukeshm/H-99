-- Eliminate consecutive duplicates of list elements

compress :: Eq a => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x1:x2:xs)
    | x1 == x2 = compress (x2:xs)
    | otherwise = x1 : compress (x2:xs)

-- prelude> compress "aaaabccaadeeee"
-- o/p : "abcade"
