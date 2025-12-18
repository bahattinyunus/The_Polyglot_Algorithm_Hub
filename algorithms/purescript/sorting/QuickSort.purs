module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.Array (filter, length, head, tail, snoc)
import Data.Maybe (Maybe(..), fromMaybe)

quickSort :: Array Int -> Array Int
quickSort arr = 
  if length arr <= 1 
    then arr
    else 
      let pivot = fromMaybe 0 (head arr)
          rest = fromMaybe [] (tail arr)
          less = filter (\x -> x < pivot) rest
          greater = filter (\x -> x >= pivot) rest
      in quickSort less <> [pivot] <> quickSort greater

main :: Effect Unit
main = do
  let arr = [10, 7, 8, 9, 1, 5]
  log $ "Original: " <> show arr
  log $ "Sorted: " <> show (quickSort arr)
