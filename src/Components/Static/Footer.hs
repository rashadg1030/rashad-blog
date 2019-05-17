{-# LANGUAGE OverloadedStrings #-}

module Components.Static.Footer (footer, footerIO) where 

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text

footer :: Html ()
footer = div_ [class_ "footer"] $ do hr_ []
                                     p_ "This is a footer."

footerIO :: HtmlT IO ()
footerIO = div_ [class_ "footer"] $ do hr_ []
                                       p_ "This is a footer."