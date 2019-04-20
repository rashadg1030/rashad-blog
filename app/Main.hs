{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.Text.Lazy.IO as T
import Lucid (renderText)
import Contact 

cdDocs :: String
cdDocs = "./docs/"

main :: IO ()
main = T.writeFile (cdDocs <> "home.html") (renderText $ template test)
