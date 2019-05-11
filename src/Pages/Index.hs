{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

module Pages.Index (render) where

import Data.Text.Internal.Lazy
import Data.Monoid
import Lucid
import Lucid.Base
import Lucid.Html5
import Components.Dynamic.Base
import Components.Dynamic.Post
import Control.Monad.IO.Class

render :: IO Text
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

getPosts :: HtmlT IO [Post]
getPosts = liftIO $ do
                      undefined 
                                                                      
                     


-- mapM_ :: (Foldable t, Monad m) => (a -> m b) -> t a -> m ()
-- (a -> m b) 
                                                               
-- renderTextT :: Monad m => HtmlT m a -> m Text


