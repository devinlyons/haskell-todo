module Models.Todo where

import Data.Text

data Todo = Todo 
  { description :: Text
  , complete    :: Bool
  } deriving (Show)
