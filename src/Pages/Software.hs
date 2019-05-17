{-# LANGUAGE OverloadedStrings #-}

module Pages.Software (render) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text.Internal.Lazy
import Components.Dynamic.Base

render :: Text
render = renderText $ inBase softwarePage

softwarePage :: Html ()
softwarePage = h1_ "Here you can find software I've built or contributed to. Coming soon."