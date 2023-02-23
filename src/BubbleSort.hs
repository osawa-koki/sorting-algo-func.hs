module BubbleSort
    ( bubbleSort
    ) where

import Data.List (sort)

bubbleSort :: Ord a => [a] -> [a]
bubbleSort xs = go (length xs) xs
    where
        go 0 ys = ys
        go n ys = go (n - 1) $ bubble ys
        bubble [] = []
        bubble [x] = [x]
        bubble (x:y:xs')
            | x > y = y : bubble (x:xs')
            | otherwise = x : bubble (y:xs')
