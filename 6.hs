-- Find out whether a list is a palindrome

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == reverse xs


-- *Main> isPalindrome [1,2,3]
-- o/p : False
-- *Main> isPalindrome "madamimadam"
-- o/p : True
-- *Main> isPalindrome [1,2,4,8,16,8,4,2,1]
-- o/p : True
