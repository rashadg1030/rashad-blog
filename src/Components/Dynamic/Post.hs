{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE InstanceSigs #-}

module Components.Dynamic.Post (Post(..)) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text
import Data.Time.Format
import Data.Time.Calendar

data Post = Post { title :: Text
                 , date :: Text
                 , href :: Text
                 , tags :: [Text] }      
  deriving (Show, Eq)    
  
instance Ord Post where
  (<=) :: Post -> Post -> Bool
  p1 <= p2 = date1 <= date2
    where
      date1 = parseTimeM True defaultTimeLocale "%0Y-%m-%d" (unpack $ date p1) :: Maybe Day
      date2 = parseTimeM True defaultTimeLocale "%0Y-%m-%d" (unpack $ date p2) :: Maybe Day

testParse :: String -> Maybe Day
testParse s = parseTimeM True defaultTimeLocale "%0Y-%m-%d" s :: Maybe Day             
