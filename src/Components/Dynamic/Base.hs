{-# LANGUAGE OverloadedStrings #-}

module Components.Dynamic.Base (inBase) where

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
                                            footer ) )