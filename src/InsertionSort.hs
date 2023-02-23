module InsertionSort
    ( insertionSort
    ) where

insertionSort :: Ord a => [a] -> [a]
insertionSort [] = []
insertionSort (x:xs) = insert x (insertionSort xs)
  where
    insert y [] = [y]
    insert y l@(x:xs)
        | y <= x = y : l
        | otherwise = x : insert y xs
