{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.Text.Lazy.IO as T
import Data.Text.Internal.Lazy
import Lucid
import Lucid.Html5
import qualified Pages.Art as Art
import qualified Pages.Contact as Contact 
import qualified Pages.Index as Index 
import qualified Pages.Library as Library
import qualified Pages.Research as Research
import qualified Pages.Software as Software
import Converters.MDtoHTML

main :: IO ()
main = do
         indexHtml <- Index.render
         T.writeFile "./docs/index.html" indexHtml
         T.writeFile "./docs/software.html" Software.render   
         T.writeFile "./docs/research.html" Research.render
         T.writeFile "./docs/library.html" Library.render 
         T.writeFile "./docs/art.html" Art.render 
         T.writeFile "./docs/contact.html" Contact.render  
         mdToHtml "./posts/1.markdown" "./docs/1.html" 