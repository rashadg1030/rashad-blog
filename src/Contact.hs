{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Contact where

import Data.Text 
import Data.Monoid
import Lucid
import Lucid.Html5
import Lucid.Base

mkListItem :: Html () -> Text -> Html ()
mkListItem t link = li_ (a_ [href_ link] t)

navBar :: Html ()
navBar = ul_ $ mconcat [ mkListItem "Home" "#index"
                       , mkListItem "Blog" "#blog"
                       , mkListItem "Laboratory" "#laboratory"
                       , mkListItem "Art" "#art"
                       , mkListItem "Contact" "#contact" 
                       ]

resumeButton :: Html ()
resumeButton = button_ resume 

resume :: Html ()
resume = a_ [href_ "./Rashad_Gover.pdf", download_ "Rashad_Gover"] "Download Resume"

header :: Html ()
header = head_ ( do meta_ [charset_ "utf-8"]
                    meta_ [ name_ "viewport"
                        , content_ "width=device-width, initial-scale=1"
                        ]
                    link_ [ href_ "./style.css"
                        , rel_ "stylesheet"
                        , type_ "text/css"
                        ]
                    link_ [ href_ "//fonts.googleapis.com/css?family=Open+Sans" 
                        , rel_ "stylesheet"
                        , type_ "text/css"
                        ]
                    link_ [ href_ "//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.1.0/css/bootstrap.min.css"
                        , rel_ "stylesheet"
                        , type_ "text/css"]
                    title_ "rλshλd1030" )
-- Add Canon Later

template :: Html () -> Html ()
template inner = doctypehtml_ ( do header
                                   body_ ( do h1_ "rλshλd1030"
                                              inner
                                              p_ "This is my first entry." 
                                              navBar  
                                              resumeButton ))
              

