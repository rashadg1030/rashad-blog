{-# LANGUAGE OverloadedStrings #-}

module Converters.MDtoHTML (mdToHtml) where

import Text.Pandoc
import Data.Text (Text)
import qualified Data.Text.IO as T

mdToHtml :: FilePath -> FilePath -> IO ()
mdToHtml inPath outPath = do
  markdown <- T.readFile inPath 
  result <- runIO $ do
    ast <- readMarkdown def markdown
    writeHtml5String def ast
  html <- handleError result
  T.writeFile outPath html 

  
