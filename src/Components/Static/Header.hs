{-# LANGUAGE OverloadedStrings #-}

module Components.Static.Header (header) where 

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text

header :: Html ()
header = head_ ( do meta_ [ charset_ "utf-8"
                          , name_ "viewport"
                          , content_ "width=device-width, initial-scale=1"
                          ]
                    link_ [ href_ "./style.css"
                          , rel_ "stylesheet"
                          ]
                    title_ "RλSHλD1030" )