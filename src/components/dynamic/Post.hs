module Components.Dynamic.Post (Post, postToHtml) where

data Post = Post { title :: Text
                 , date :: Text
                 , content :: Text
                 , tags :: [Text]
                 }           

postToHtml :: Post -> Html ()
postToHtml post = undefined