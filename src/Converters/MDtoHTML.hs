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

mdToHtml :: FilePath -> HtmlT IO ()
mdToHtml inPath = do
  markdown <- liftIO $ T.readFile inPath 
  result <- liftIO $ runIO $ do
    ast <- readMarkdown def markdown
    writeHtml5String def ast
  html <- liftIO $ handleError result
  inBaseText html
  
