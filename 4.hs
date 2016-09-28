myLength :: [a] -> Int
myLength xs = go xs 0
            where go :: [a] -> Int -> Int
                  go [] n = n
                  go (y:ys) n = go ys (n+1)

-- Prelude> myLength [123, 456, 789]
-- o/p : 3
-- Prelude> myLength "Hello, world!"
-- o/p :13
