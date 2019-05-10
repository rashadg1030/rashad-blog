{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

module Components.Dynamic.Post (Post, postToHtml) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text

data Post = Post { title :: Text
                 , date :: Text
                 , href :: Text
                 , tags :: [Text] }           

postToHtml :: Post -> Html ()
postToHtml Post {..} = div_ [class_ "post", href_ href] (do h1_ $ toHtml title
                                                            p_ $ toHtml date
                                                            -- tags 
                                                        )