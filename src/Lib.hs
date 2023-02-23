module Lib
    ( display
    ) where

import Data.List (sort)

display :: String -> [Integer] -> String
display s xs =
  let paddedString = take 20 (s ++ repeat ' ')
      sorted = sort xs
      sortedString = "(" ++ (if xs == sorted then "true " else "false") ++ ")"
  in paddedString ++ sortedString ++ " : " ++ unwords (map show xs) ++ " "
