{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.Text.Lazy.IO as T
import Lucid (renderText)
import Lucid.Html5
import Index 
import Contact

main :: IO ()
main = do
  T.writeFile ("./docs" <> "/index.html") (renderText indexPage)
  T.writeFile ("./docs" <> "/contact.html") (renderText contactPage)
