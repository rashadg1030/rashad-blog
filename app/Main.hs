{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.Text.Lazy.IO as T
import Lucid (renderText)
import Contact 

main :: IO ()
main = do
  T.writeFile ("./docs" <> "/index.html") (renderText $ indexPage "Welcome to my website!")
