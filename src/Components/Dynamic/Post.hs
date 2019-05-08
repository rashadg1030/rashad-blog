module Components.Dynamic.Post (Post, postToHtml) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Data.Text

data Post = Post { title :: Text
                 , date :: Text
                 , content :: Text
                 , tags :: [Text]
                 }           

postToHtml :: Post -> Html ()
postToHtml post = undefined