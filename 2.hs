myButLast :: [a] -> a
myButLast [] = error "Empty List"
myButLast [_] = error "Only one element in List"
myButLast (x:[_]) = x
myButLast (_:xs) = myButLast xs

-- Prelude> myButLast [1,2,3,4]
-- o/p : 3
-- Prelude> myButLast ['a'..'z']
-- o/p : 'y'
