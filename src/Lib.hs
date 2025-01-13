module Lib
  ( maxInList,
    sumList,
  )
where

-- returns the maximum element in a list, if it exists
maxInList :: (Ord a) => [a] -> Maybe a
maxInList [] = Nothing
maxInList xs = Just (maximum xs)

-- returns the sum of all elements in a list
sumList :: [Int] -> Int
sumList = sum
