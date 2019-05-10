{-# LANGUAGE OverloadedStrings #-}

module Components.Static.Footer (footer) where 

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text

footer :: Html ()
footer = footer_ [class_ "footer"] "This is a footer."