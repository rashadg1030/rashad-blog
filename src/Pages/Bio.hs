{-# LANGUAGE OverloadedStrings #-}

module Pages.Bio (render) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text.Internal.Lazy

render :: Text
render = renderText bioPage

bioPage :: Html ()
bioPage = h1_ "Bio Coming Soon"