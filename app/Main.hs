module Main (main) where

import Lib

bubbleSort :: Ord a => [a] -> [a]
bubbleSort xs = go (length xs) xs
  where
    go 0 ys = ys
    go n ys = go (n - 1) $ bubble ys
    bubble [] = []
    bubble [x] = [x]
    bubble (x:y:xs)
        | x > y = y : bubble (x:xs)
        | otherwise = x : bubble (y:xs)

main :: IO ()
main = do
    let arr = [9, 3, 0, 6, 1, 8, 7, 2, 4, 5]
    let sortedArr = bubbleSort arr
    putStrLn $ unwords $ map show sortedArr
