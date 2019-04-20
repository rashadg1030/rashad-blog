{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Contact where

import Data.Text 
import Lucid
import Lucid.Html5
import Lucid.Base

test :: Html ()
test = "123 < 456"

template :: Html () -> Html ()
template inner = do
                  h1_ "rashad1030"
                  inner
                  p_ "This is my first entry." 
              
test2 :: Html () 
test2 = table_ (tr_ (td_ (p_ "Hello, World!")))

