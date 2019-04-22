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
contactPage = baseTemplate $ div_ (do p_ "let myContactInfo = Contact { name = \"Rashad Gover\""
                                      p_ ", email = \"rashad.sasaki@gmail.com\""
                                      p_ ", phone = \"(310)-910-3199\" }")