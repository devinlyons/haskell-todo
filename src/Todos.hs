module Todos where

import Models.Todo

get :: [Todo]
get = [
    Todo 
    { description = "Learn Haskell"
    , complete = False
    },
    Todo 
    { description = "Write To Do Application"
    , complete = False
    },
    Todo 
    { description = "Rule the World!"
    , complete = False
    }
  ]
