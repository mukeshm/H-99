-- Flatten a nested list structure
-- We have to define a new data type, because lists in Haskell are homogeneous.

data NestedList a = Elem a | List [NestedList a] deriving Show

flatten :: NestedList a -> [a]
flatten (List []) = []
flatten (Elem a) = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)

-- *Main> flatten (Elem 5)
-- o/p : [5]
-- *Main> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
-- o/p : [1,2,3,4,5]
-- *Main> flatten (List [])
-- o/p : []
