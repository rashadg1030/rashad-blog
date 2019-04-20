{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Index where

import Components
import Data.Text 
import Data.Monoid
import Lucid
import Lucid.Html5
import Lucid.Base

-- Add Canon Later
indexPage :: Html () -> Html ()
indexPage body = doctypehtml_ ( do header
                                   body_ ( do h1_ [class_ "is-size-1 has-text-primary"] "rλshλd1030"
                                              navBar 
                                              --card "https://bulma.io/images/placeholders/1280x960.png" "https://bulma.io/images/placeholders/96x96.png" "My first article" 
                                              body
                                              p_ "This is my first entry."   
                                              resumeButton
                                              --card "https://bulma.io/images/placeholders/1280x960.png" "https://bulma.io/images/placeholders/96x96.png" "My first article" ))
                                              footer ) )

              

