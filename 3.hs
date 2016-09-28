elementAt :: [a] -> Int -> a
elementAt [] _ = error "Index out of range"
elementAt (x:_) 1 = x
elementAt (_:xs) n
            | n < 1 = error "Index out of range"
            | otherwise = elementAt xs (n-1)


-- Prelude> elementAt [1,2,3] 2
-- o/p : 2
-- Prelude> elementAt "haskell" 5
-- o/p : 'e'
