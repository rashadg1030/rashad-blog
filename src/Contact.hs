{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Contact where

import Data.Text 
import Data.Monoid
import Lucid
import Lucid.Html5
import Lucid.Base

test :: Html ()
test = p_ [class_ "blue"] "123 < 456"

mkListItem :: Html () -> Text -> Html ()
mkListItem t link = li_ (a_ [href_ link] t)

listItems :: [Html ()]
listItems = [ mkListItem "Home" "#index"
            , mkListItem "Blog" "#blog"
            , mkListItem "Laboratory" "#laboratory"
            , mkListItem "Art" "#art"
            , mkListItem "Contact" "#contact" 
            ]

-- Add Canon Later

template :: Html () -> Html ()
template inner = do
                  h1_ "rλshλd1030"
                  inner
                  p_ "This is my first entry." 
                  ul_ (mconcat listItems)  
              

test2 :: Html () 
test2 = table_ (tr_ (td_ (p_ "Hello, World!")))

