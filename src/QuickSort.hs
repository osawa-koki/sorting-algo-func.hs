module QuickSort
    ( quickSort
    ) where

-- mergeSort :: Ord a => [a] -> [a]
-- mergeSort [] = []
-- mergeSort [x] = [x]
-- mergeSort xs = merge (mergeSort ys) (mergeSort zs)
--     where
--         (ys, zs) = splitAt (length xs `div` 2) xs

-- merge :: Ord a => [a] -> [a] -> [a]
-- merge [] ys = ys
-- merge xs [] = xs
-- merge (x:xs) (y:ys)
--     | x <= y = x : merge xs (y:ys)
--     | otherwise = y : merge (x:xs) ys

quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = quickSort [y | y <- xs, y <= x] ++ [x] ++ quickSort [y | y <- xs, y > x]
