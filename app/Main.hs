module Main where

import qualified Data.Text as T
import Models.Todo
import Todos

main :: IO ()
main = traverse (putStrLn . T.unpack . description) get >> return ()
