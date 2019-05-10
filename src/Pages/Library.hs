{-# LANGUAGE OverloadedStrings #-}

module Pages.Library (render) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text.Internal.Lazy
import Components.Dynamic.Base

render :: Text
render = renderText $ inBase libraryPage

libraryPage :: Html () 
libraryPage = h1_ "My Library Coming Soon"