{-# LANGUAGE OverloadedStrings #-}

module Pages.Research (render) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text.Internal.Lazy

render :: Text
render = renderText researchPage

researchPage :: Html ()
researchPage = h1_ "Here you can find research that I'm interested in."