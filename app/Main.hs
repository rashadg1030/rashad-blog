{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.Text.Lazy.IO as T
import Lucid
import Lucid.Html5
import Pages.Index 

main :: IO ()
main = undefined

-- do
  -- T.writeFile ("./docs" <> "/index.html") (renderText indexPage)
  -- T.writeFile ("./docs" <> "/contact.html") (renderText contactPage)
