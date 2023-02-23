module Main (main) where

import Lib
import BubbleSort

main :: IO ()
main = do
    let arr = [9, 3, 0, 6, 1, 8, 7, 2, 4, 5]

    putStrLn $ display "Original" arr
    putStrLn $ display "Bubble Sort" $ bubbleSort arr
