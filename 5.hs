--  Reverse a list

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- Prelude> myReverse "A man, a plan, a canal, panama!"
-- o/p : "!amanap ,lanac a ,nalp a ,nam A"
-- Prelude> myReverse [1,2,3,4]
-- o/p : [4,3,2,1]
