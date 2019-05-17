{-# LANGUAGE OverloadedStrings #-}

module Components.Dynamic.Base (inBase, inBaseIO) where

import Components.Static.Header
import Components.Static.Navbar
import Components.Static.Footer
import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text
    
inBase :: Html () -> Html ()
inBase inner = doctypehtml_ ( do header
                                 body_ ( do navbar
                                            div_ [class_ "main"] inner 
                                            -- footer
                                             ) )

inBaseIO :: HtmlT IO () -> HtmlT IO ()
inBaseIO inner = doctypehtml_ ( do headerIO
                                   body_ ( do navbarIO
                                              div_ [class_ "main"] inner
                                              --footerIO 
                                              ) )