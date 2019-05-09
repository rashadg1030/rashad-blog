module Pages.Blog (render) where

import Lucid
import Lucid.Base
import Lucid.Html5
import Components.Dynamic.Post
import Data.Text.Internal.Lazy

render :: Text
render = renderText $ blogPage posts

posts :: [Post]
posts = undefined

blogPage :: [Post] -> Html ()
blogPage posts = undefined


