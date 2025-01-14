module Lib
  ( maxInList,
    sumList,
    fibonacci
  )
where

-- returns the maximum element in a list, if it exists
maxInList :: (Ord a) => [a] -> Maybe a
maxInList [] = Nothing
maxInList xs = Just (maximum xs)

-- returns the sum of all elements in a list
sumList :: [Int] -> Int
sumList = sum

-- returns the nth fibonacci number
fibonacci :: Int -> Int
fibonacci n | n < 0 = 0
            | n == 0 = 0
            | n == 1 = 1
            | otherwise = fibonacci (n - 1) + fibonacci (n - 2)
