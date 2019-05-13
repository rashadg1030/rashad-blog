{-# LANGUAGE OverloadedStrings #-}

module Converters.MDtoHTML (mdToHtml) where

import Text.Pandoc
import Data.Text (Text)
import qualified Data.Text.IO as T

mdToHtml :: Text -> IO Text
mdToHtml txt = runIOorExplode $
  readMarkdown def txt
  >>= writeHtml5String def
