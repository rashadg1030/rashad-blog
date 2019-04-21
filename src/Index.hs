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
indexPage body = baseTemplate (do splashContainer "Rashad Gover" "Abstraction Engineer for Hire" "Download Resume" "./Rashad_Gover.pdf")

              

