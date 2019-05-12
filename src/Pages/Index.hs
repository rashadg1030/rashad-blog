{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

module Pages.Index (render) where

import Data.Text.IO -- Which text to use??
import Data.Text

import qualified Data.Text.Internal.Lazy as Lazy
--import qualified Data.Text.Lazy.IO as LazyIO

import Data.Monoid
import Lucid
import Lucid.Base
import Lucid.Html5
import Components.Dynamic.Base
import Components.Dynamic.Post
import Control.Monad.IO.Class
import System.Directory
import Prelude hiding (lines, readFile)

render :: IO Lazy.Text
render = renderTextT indexPage
 
indexPage :: HtmlT IO ()
indexPage = do h1_ "Home Page"
               p_ "Welcome to my blog! My name is Rashad." 
               p_ "I'm a programmer that loves programming in general, but I'm primarily interested in functional and/or statically typed programming languages like Haskell and Scheme."
               p_ "I'm discovering the intersection between logic, mathematics, and computation."
               p_ "On my blog you will find a wide range of topics, from software design to generative art."
               p_ "Enjoy!"
               archive


postToListItem :: Post -> HtmlT IO ()
postToListItem Post{..} = li_ [class_ "post-item", href_ href] (do h1_ $ toHtml title
                                                                   p_ $ toHtml date
                                                                -- tags 
                                                                )

archive :: HtmlT IO ()
archive = div_ [class_ "archive"] (do h1_ "Archive"
                                      ul_ [class_ "archive-list"] (do posts <- getPosts
                                                                      mapM_ postToListItem posts))

contentToPost :: Text -> Post
contentToPost = linesToPost . lines
  where 
    linesToPost :: [Text] -> Post
    linesToPost (x:y:_) = Post{ title = x, date = y, href = "#", tags = [] }
    linesToPost _       = Post{ title = "Unknown", date = "Unknown", href = "#", tags = [] } 

getPosts :: HtmlT IO [Post]
getPosts = liftIO $ do
  filePaths <- listDirectory "./posts/" -- From the perspective of the location of Main.hs
  contents <- mapM readFile ((++) "./posts/" <$> filePaths)
  let posts = contentToPost <$> contents
  return posts

testGetPosts :: IO ()
testGetPosts = do
  filePaths <- listDirectory "../../posts"
  contents <- mapM readFile ((++) "../../posts/" <$> filePaths)
  let posts = contentToPost <$> contents 
  print posts

                                                                      
                     


-- mapM_ :: (Foldable t, Monad m) => (a -> m b) -> t a -> m ()

--mapM :: (Traversable t, Monad m) => (a -> m b) -> t a -> m (t b)
                                                               
-- renderTextT :: Monad m => HtmlT m a -> m Text


