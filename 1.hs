myLast :: [a] -> a
myLast [] = error "Empty list"
myLast (x:[]) = x
myLast (x:xs) = myLast xs

-- Prelude> myLast [1,2,3,4]
-- o/p : 4
-- Prelude> myLast ['x','y','z']
-- o/p : 'z'
