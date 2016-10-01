-- Pack consecutive duplicates of list elements into sublists.
-- If a list contains repeated elements they should be placed in separate sublists

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack xss@(x:xs) = takeWhile (== x) xss : pack (dropWhile ( == x) xss)


-- *Main> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
-- o/p : ["aaaa","b","cc","aa","d","eeee"]
