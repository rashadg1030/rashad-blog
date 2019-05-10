{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

module Components.Dynamic.Post (Post(..)) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text

data Post = Post { title :: Text
                 , date :: Text
                 , href :: Text
                 , tags :: [Text] }           