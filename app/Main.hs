{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.Text.Lazy.IO as T
import Lucid
import Lucid.Html5
import qualified Pages.Art as Art
import qualified Pages.Contact as Contact 
import qualified Pages.Index as Index 
import qualified Pages.Library as Library
import qualified Pages.Research as Research
import qualified Pages.Software as Software

main :: IO ()
main = do
         T.writeFile "./docs/index.html" Index.render
         T.writeFile "./docs/software.html" Software.render   
         T.writeFile "./docs/research.html" Research.render
         T.writeFile "./docs/library.html" Library.render 
         T.writeFile "./docs/art.html" Art.render 
         T.writeFile "./docs/contact.html" Contact.render  