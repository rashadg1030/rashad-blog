{-# LANGUAGE OverloadedStrings #-}

module Converters.MDtoHTML (mdToHtml) where

import Text.Pandoc
import Data.Text (Text)
import Lucid
import Lucid.Base
import Lucid.Html5
import Components.Dynamic.Base
import Control.Monad.IO.Class
import qualified Data.Text.IO as T

mdToHtml :: FilePath -> IO Text
mdToHtml inPath = do
  template <- baseTemplate
  markdown <- liftIO $ T.readFile inPath 
  result <- liftIO $ runIO $ do
    ast <- readMarkdown def{ readerExtensions = pandocExtensions } markdown
    writeHtml5String def{ writerTemplate = Just template } ast
  html <- liftIO $ handleError result
  return html

baseTemplate :: IO String
baseTemplate = readFile "./templates/postTemplate.html"