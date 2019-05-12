{-# LANGUAGE OverloadedStrings #-}

module Components.Static.Footer (footer, footerIO) where 

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text

footer :: Html ()
footer = footer_ [class_ "footer"] "This is a footer."

footerIO :: HtmlT IO ()
footerIO = footer_ [class_ "footer"] "This is a footer."