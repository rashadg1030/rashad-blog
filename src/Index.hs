{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Index where

import Data.Text 
import Data.Monoid
import Lucid
import Lucid.Html5
import Lucid.Base

resumeButton :: Html ()
resumeButton = a_ [class_ "button is-rounded is-primary", href_ "./Rashad_Gover.pdf", download_ "Rashad_Gover"] resumeIcon

resumeIcon :: Html ()
resumeIcon = do
  span_ [ class_ "icon" ] ( i_ [ class_ "fas fa-download" ] "" )
  span_ "Download Resume" 

header :: Html ()
header = head_ ( do meta_ [charset_ "utf-8"]
                    meta_ [ name_ "viewport"
                          , content_ "width=device-width, initial-scale=1"
                          ]
                    link_ [ href_ "https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css"
                          , rel_ "stylesheet"
                          ]
                    script_ [ defer_ ""
                            , src_ "https://use.fontawesome.com/releases/v5.3.1/js/all.js" 
                            ] ""
                    title_ "rλshλd1030" )
-- Add Canon Later

indexPage :: Html () -> Html ()
indexPage inner = doctypehtml_ ( do header
                                    body_ ( do h1_ [class_ "is-size-1 has-text-primary"] "rλshλd1030"
                                               div_ [class_ "tabs is-toggle is-toggle-rounded"] navBar  
                                               inner
                                               p_ "This is my first entry."   
                                               resumeButton ))
              

