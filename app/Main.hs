{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.Text.Lazy.IO as T
import Lucid (renderText)
import Contact 

cdDocs :: String
cdDocs = "./docs/"

main :: IO ()
main = do
  T.writeFile (cdDocs <> "index.html") (renderText $ template test)
