{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Converters.MDtoHTML
import qualified Data.Text.Lazy.IO       as TL
import qualified Data.Text.IO       as T
import           Lucid
import           Lucid.Html5
import qualified Pages.Art               as Art
import qualified Pages.Contact           as Contact
import qualified Pages.Index             as Index
import qualified Pages.Library           as Library
import qualified Pages.Research          as Research
import qualified Pages.Software          as Software

main :: IO ()
main = do
  indexHtml <- Index.render
  TL.writeFile "./docs/index.html" indexHtml
  TL.writeFile "./docs/software.html" Software.render
  TL.writeFile "./docs/research.html" Research.render
  TL.writeFile "./docs/library.html" Library.render
  TL.writeFile "./docs/art.html" Art.render
  TL.writeFile "./docs/contact.html" Contact.render
  post1 <- mdToHtml "./posts/1.markdown"
  T.writeFile "./docs/1.html" post1 
