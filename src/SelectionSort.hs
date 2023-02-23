module SelectionSort
    ( selectionSort
    ) where

selectionSort :: Ord a => [a] -> [a]
selectionSort [] = []
selectionSort xs = let (y, ys) = select xs
                   in y : selectionSort ys
    where
        select [x] = (x, [])
        select (x:xs)
            | x <= y = (x, xs)
            | otherwise = (y, x:ys)
            where
                (y, ys) = select xs
