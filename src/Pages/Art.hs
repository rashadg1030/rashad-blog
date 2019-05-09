{-# LANGUAGE OverloadedStrings #-}

module Pages.Art (render) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text.Internal.Lazy

render :: Text
render = renderText artPage

artPage :: Html ()
artPage = h1_ "Art Coming Soon"