{-# LANGUAGE OverloadedStrings #-}

module Converters.MDtoHTML (mdToHtml) where

import Text.Pandoc
import Data.Text (Text)
import Lucid
import Lucid.Base
import Lucid.Html5
import Components.Dynamic.Base
import qualified Data.Text.IO as T

mdToHtml :: String -> IO ()
mdToHtml name = do
  template <- baseTemplate
  markdown <- T.readFile ("./posts/" ++ name ++ ".markdown") 
  result <-runIO $ do
    ast <- readMarkdown def{ readerExtensions = pandocExtensions } markdown
    writeHtml5String def{ writerTemplate = Just template } ast
  html <- handleError result
  T.writeFile ("./docs/" ++ name ++ ".html") html

baseTemplate :: IO String
baseTemplate = readFile "./templates/postTemplate.html"