{-# LANGUAGE OverloadedStrings #-}

module Pages.Software (render) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text.Internal.Lazy

render :: Text
render = renderText softwarePage

softwarePage :: Html ()
softwarePage = h1_ "My software adventures."