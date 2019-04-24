{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Contact where

import Components
import Data.Text 
import Data.Monoid
import Lucid
import Lucid.Html5
import Lucid.Base

-- Add Canon Later
contactPage :: Html ()
contactPage = baseTemplate $ div_ (do p_ "myContactInfo :: Rashad"  
                                      p_ "myContactInfo = Contact { name = \"Rashad Gover\""
                                      p_ ", email = \"rashad.sasaki@gmail.com\""
                                      p_ ", location = \"Los Angeles, CA\" }")

-- CONTACT PAGE --
{--
contactInfo :: Rashad 
contactInfo = Contact { email     = "rashad.sasaki@gmail.com"
                      , location  = "Los Angeles, CA"
                      , linkedIn  = ""
                      , instagram = "COMING SOON" } 
--}