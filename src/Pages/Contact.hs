{-# LANGUAGE OverloadedStrings #-}

module Pages.Contact (render) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text.Internal.Lazy

render :: Text
render = renderText contactPage

-- Add Canon Later
contactPage :: Html ()
contactPage = h1_ "I live in a hole in Nevada."

-- CONTACT PAGE DESIGN --
{--
contactInfo :: Rashad 
contactInfo = Contact { email     = "rashad.sasaki@gmail.com"
                      , location  = "Los Angeles, CA"
                      , linkedIn  = ""
                      , instagram = "COMING SOON" } 
--}